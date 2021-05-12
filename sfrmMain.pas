unit sfrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes,
  Vcl.StdCtrls, VCL.TMSFNCCustomControl, VCL.TMSFNCWidgetArrow, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, json,
  VCL.TMSFNCWidgetDistributionIndicator, VCL.TMSFNCWidgetGauge,
  VCL.TMSFNCWidgetMarqueeProgress, VCL.TMSFNCWidgetProgress,
  VCL.TMSFNCWidgetMarqueeContinuousProgress, VCL.TMSFNCWidgetMultiProgress,
  VCL.TMSFNCCustomComponent, VCL.TMSFNCBitmapContainer, VCL.TMSFNCWidgetLCDLabel,
  Vcl.Samples.Spin, VCL.TMSFNCWidgetSetPoint, VCL.TMSFNCWidgetTrendIndicator;

type
  TfrmMain = class(TForm)
    pcMain: TPageControl;
    tabArrow: TTabSheet;
    tabDistributionIndicator: TTabSheet;
    tabGauge: TTabSheet;
    tabMarqueeProgress: TTabSheet;
    tabMultiProgress: TTabSheet;
    tabSetPointAndLcdLabel: TTabSheet;
    tabTrendIndicator: TTabSheet;
    tmrArrowUpdate: TTimer;
    tabProgress: TTabSheet;
    wigArrow: TTMSFNCWidgetArrow;
    lblArrowEURUSD: TLabel;
    edArrowAPIKey: TLabeledEdit;
    btnArrowStart: TButton;
    RESTClient: TRESTClient;
    RESTRequest: TRESTRequest;
    RESTResponse: TRESTResponse;
    coDistIndType: TComboBox;
    rdDistIndAbs: TRadioButton;
    rdDistIndPer: TRadioButton;
    Label1: TLabel;
    wigDistributionIndicator: TTMSFNCWidgetDistributionIndicator;
    wigGauge: TTMSFNCWidgetGauge;
    edGaugeKey: TLabeledEdit;
    btnGaugeStart: TButton;
    tmrGaugeUpdate: TTimer;
    edGaugeLocation: TLabeledEdit;
    memTerminal: TMemo;
    wigMarqueeCntdProg: TTMSFNCWidgetMarqueeContinuousProgress;
    wigMarqueeProg: TTMSFNCWidgetMarqueeProgress;
    tmrMarqueeUpdate: TTimer;
    tmrMultiProgUpdate: TTimer;
    wigMultiProg: TTMSFNCWidgetMultiProgress;
    wigProgressAni: TTMSFNCWidgetProgress;
    wigProgressBMP: TTMSFNCWidgetProgress;
    Label3: TLabel;
    Label2: TLabel;
    tmsBitmapContainer: TTMSFNCBitmapContainer;
    tmrProgUpdate: TTimer;
    wigLCDLabel: TTMSFNCWidgetLCDLabel;
    tbarSetPointTemp: TTrackBar;
    Label4: TLabel;
    btnChangeSetPoint: TButton;
    wigSetPoint: TTMSFNCWidgetSetPoint;
    spSetPoint: TSpinEdit;
    wigTrendIndicator: TTMSFNCWidgetTrendIndicator;
    btnStartTrendIndi: TButton;
    edTrendIndKey: TLabeledEdit;
    tmrTrendIndicatorUpdate: TTimer;
    procedure btnArrowStartClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tmrArrowUpdateTimer(Sender: TObject);
    procedure coDistIndTypeChange(Sender: TObject);
    procedure rdDistIndClick(Sender: TObject);
    procedure btnGaugeStartClick(Sender: TObject);
    procedure tmrGaugeUpdateTimer(Sender: TObject);
    procedure pcMainChange(Sender: TObject);
    procedure tmrMarqueeUpdateTimer(Sender: TObject);
    procedure tmrMultiProgUpdateTimer(Sender: TObject);
    procedure tmrProgUpdateTimer(Sender: TObject);
    procedure btnChangeSetPointClick(Sender: TObject);
    procedure tbarSetPointTempChange(Sender: TObject);
    procedure btnStartTrendIndiClick(Sender: TObject);
    procedure tmrTrendIndicatorUpdateTimer(Sender: TObject);
  private
    doubleArrowLastValue: Double;
  public
    procedure SetTemperature(ATemp: Single);
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

function UpdateProgress(AProgress: Single): Single;
var
  AIncr: Single;
begin
  result := AProgress;
  if AProgress >= 100 then
    exit;
  AIncr := 0;
  while AIncr = 0 do
    AIncr := Random(12);
  AProgress := AProgress + AIncr;
  if AProgress >= 100 then
    AProgress := 100;
  result := AProgress;
end;

procedure TfrmMain.btnArrowStartClick(Sender: TObject);
begin
  btnArrowStart.Caption := '&Start';
  tmrArrowUpdate.Enabled := not tmrArrowUpdate.Enabled;
  if tmrArrowUpdate.Enabled then
    btnArrowStart.Caption := '&Stop';
end;

procedure TfrmMain.btnChangeSetPointClick(Sender: TObject);
begin
  wigSetPoint.SetPoint := spSetPoint.Value;
  SetTemperature(tbarSetPointTemp.Position);
end;

procedure TfrmMain.btnGaugeStartClick(Sender: TObject);
begin
  btnGaugeStart.Caption := '&Start';
  tmrGaugeUpdate.Enabled := not tmrGaugeUpdate.Enabled;
  if tmrGaugeUpdate.Enabled then
    btnGaugeStart.Caption := '&Stop';
end;

procedure TfrmMain.btnStartTrendIndiClick(Sender: TObject);
begin
  btnStartTrendIndi.Caption := '&Start';
  tmrTrendIndicatorUpdate.Enabled := not tmrTrendIndicatorUpdate.Enabled;
  if tmrTrendIndicatorUpdate.Enabled then
    btnStartTrendIndi.Caption := '&Stop';
end;

procedure TfrmMain.coDistIndTypeChange(Sender: TObject);
begin
  wigDistributionIndicator.DistributionType :=
        TTMSFNCWidgetDistributionType(coDistIndType.ItemIndex);
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  doubleArrowLastValue := 0.0;
  coDistIndType.ItemIndex := Integer(wigDistributionIndicator.DistributionType);
end;

procedure TfrmMain.pcMainChange(Sender: TObject);
begin
  if pcMain.ActivePage = tabMarqueeProgress then
  begin
    wigMarqueeProg.Value := Random(12);
    wigMarqueeProg.CaptionOptions.Text := 'Progress Demo';
    wigMarqueeCntdProg.CenterText := 'Working...';
    wigMarqueeProg.MarqueeAnimation.Active := true;
    wigMarqueeCntdProg.MarqueeAnimation.Active := true;
    tmrMarqueeUpdate.Enabled := true;
  end;

  if pcMain.ActivePage = tabMultiProgress then
  begin
    wigMultiProg.CaptionOptions.Text :=
     'Muli Progress Demo';
    wigMultiProg.CircleItems[0].Value := Random(12);
    wigMultiProg.CircleItems[1].Value := Random(12);
    wigMultiProg.CircleItems[2].Value := Random(12);
    tmrMultiProgUpdate.Enabled := true;
  end;

  if pcMain.ActivePage = tabProgress then
  begin
    wigProgressAni.Value := Random(12);
    wigProgressBMP.Value := Random(12);
    tmrProgUpdate.Enabled := true;
  end;
end;

procedure TfrmMain.rdDistIndClick(Sender: TObject);
begin
  if rdDistIndPer.Checked then
    wigDistributionIndicator.ValueType := vtPercentage
  else
    wigDistributionIndicator.ValueType := vtAbsolute;
end;

procedure TfrmMain.SetTemperature(ATemp: Single);
begin
  wigSetPoint.Value := ATemp;
  wigLCDLabel.Caption.Value := ATemp;

  if wigSetPoint.SetPoint > ATemp then
    wigSetPoint.Tickmarks.CenterText := 'Heating'
  else
  if wigSetPoint.SetPoint < ATemp then
    wigSetPoint.Tickmarks.CenterText := 'Cooling'
  else
    wigSetPoint.Tickmarks.CenterText := 'OK';
end;

procedure TfrmMain.tbarSetPointTempChange(Sender: TObject);
begin
  SetTemperature(tbarSetPointTemp.Position);
end;

procedure TfrmMain.tmrArrowUpdateTimer(Sender: TObject);
var
  jsonObj, jsonObjSub: TJSONObject;
  lparam : Trestrequestparameter;
  doubleArrowCurrValue: Double;
begin
  tmrArrowUpdate.Enabled := false;
  RESTClient.BaseURL := 'http://apilayer.net/api/live';
  RESTRequest.Method:=rmget;

  try
    RESTRequest.Params.Clear;
    RESTResponse.RootElement := '';
    lparam := RESTRequest.Params.AddItem;
    lparam.name := 'access_key';
    lparam.Value := edArrowAPIKey.Text;
    lparam.ContentType := ctNone;
    lparam.Kind := pkGETorPOST;
    lparam.Options := [poDoNotEncode];

    lparam := RESTRequest.Params.AddItem;
    lparam.name := 'currencies';
    lparam.Value := 'EUR';
    lparam.ContentType := ctNone;
    lparam.Kind := pkGETorPOST;
    lparam.Options := [poDoNotEncode];

    lparam := RESTRequest.Params.AddItem;
    lparam.name := 'source';
    lparam.Value := 'USD';
    lparam.ContentType := ctNone;
    lparam.Kind := pkGETorPOST;
    lparam.Options := [poDoNotEncode];


    RESTRequest.Execute;
    if not RESTResponse.Status.Success then
      showmessage(RESTResponse.StatusText + ' ' +
        inttostr(RESTResponse.StatusCode))
    else
    begin
      memTerminal.Lines.Text := RESTResponse.JSONText;
      jsonObj := RESTResponse.JSONValue as TJSONObject;
      jsonObjSub := jsonObj.GetValue('quotes') as TJSONObject;
      lblArrowEURUSD.Caption := 'USDEUR: ' + jsonObjSub.Values['USDEUR'].value;
      doubleArrowCurrValue := StrToFloat(jsonObjSub.Values['USDEUR'].value);
      if doubleArrowCurrValue > doubleArrowLastValue then
      begin
        wigArrow.ValueText := 'UP';
        wigArrow.Value := 90;
      end;

      if doubleArrowCurrValue < doubleArrowLastValue then
      begin
        wigArrow.ValueText := 'DOWN';
        wigArrow.Value := -90;
      end;

      if doubleArrowCurrValue = doubleArrowLastValue then
      begin
        wigArrow.ValueText := 'SAME';
        wigArrow.Value := 0;
      end;


      doubleArrowLastValue := doubleArrowCurrValue;
    end;
  finally
    tmrArrowUpdate.Enabled := true;
  end;

end;

procedure TfrmMain.tmrGaugeUpdateTimer(Sender: TObject);
var
  jsonObj, jsonObjSub: TJSONObject;
  lparam : Trestrequestparameter;
begin
  tmrGaugeUpdate.Enabled := false;
  RESTClient.BaseURL := 'http://api.weatherstack.com/current';
  RESTRequest.Method:=rmget;

  try
    RESTRequest.Params.Clear;
    RESTResponse.RootElement := '';
    lparam := RESTRequest.Params.AddItem;
    lparam.name := 'access_key';
    lparam.Value := edGaugeKey.Text;
    lparam.ContentType := ctNone;
    lparam.Kind := pkGETorPOST;
    lparam.Options := [poDoNotEncode];

    lparam := RESTRequest.Params.AddItem;
    lparam.name := 'query';
    lparam.Value := edGaugeLocation.Text;
    lparam.ContentType := ctNone;
    lparam.Kind := pkGETorPOST;
    lparam.Options := [poDoNotEncode];


    RESTRequest.Execute;
    if not RESTResponse.Status.Success then
      showmessage(RESTResponse.StatusText + ' ' +
        inttostr(RESTResponse.StatusCode))
    else
    begin
      memTerminal.Lines.Text := RESTResponse.JSONText;
      jsonObj := RESTResponse.JSONValue as TJSONObject;
      jsonObjSub := jsonObj.GetValue('current') as TJSONObject;
      wigGauge.Value := StrToFloat(jsonObjSub.Values['temperature'].value);
    end;
  finally
    tmrGaugeUpdate.Enabled := true;
  end;

end;

procedure TfrmMain.tmrMarqueeUpdateTimer(Sender: TObject);
begin
  if (wigMarqueeProg.Value < 100) then
    wigMarqueeProg.Value := UpdateProgress(wigMarqueeProg.Value);

  if (wigMarqueeProg.Value = 100) then
  begin
    tmrMarqueeUpdate.Enabled := false;
    wigMarqueeCntdProg.MarqueeAnimation.Active := false;
    wigMarqueeCntdProg.CenterText := 'Finished';
  end;
end;

procedure TfrmMain.tmrMultiProgUpdateTimer(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to 2 do
    if (wigMultiProg.CircleItems.Items[I].Value < 100) then
      wigMultiProg.CircleItems.Items[I].Value := UpdateProgress(wigMultiProg.CircleItems.Items[I].Value);
end;

procedure TfrmMain.tmrProgUpdateTimer(Sender: TObject);
begin
  if (wigProgressAni.Value < 100) then
    wigProgressAni.Value := UpdateProgress(wigProgressAni.Value);
  if (wigProgressBMP.Value < 100) then
    wigProgressBMP.Value := UpdateProgress(wigProgressBMP.Value);
end;

procedure TfrmMain.tmrTrendIndicatorUpdateTimer(Sender: TObject);
var
  jsonObj, jsonObjSub: TJSONObject;
  lparam : Trestrequestparameter;
  doubleArrowCurrValue: Double;
  valTrend: TTMSFNCWidgetTrendValue;
begin
  tmrTrendIndicatorUpdate.Enabled := false;
  RESTClient.BaseURL := 'http://data.fixer.io/api/latest';
  RESTRequest.Method:=rmget;

  try
    wigTrendIndicator.Values.BeginUpdate;
    RESTRequest.Params.Clear;
    RESTResponse.RootElement := '';
    lparam := RESTRequest.Params.AddItem;
    lparam.name := 'access_key';
    lparam.Value := edTrendIndKey.Text;
    lparam.ContentType := ctNone;
    lparam.Kind := pkGETorPOST;
    lparam.Options := [poDoNotEncode];

    lparam := RESTRequest.Params.AddItem;
    lparam.name := 'base';
    lparam.Value := 'EUR';
    lparam.ContentType := ctNone;
    lparam.Kind := pkGETorPOST;
    lparam.Options := [poDoNotEncode];

    lparam := RESTRequest.Params.AddItem;
    lparam.name := 'symbols';
    lparam.Value := 'USD';
    lparam.ContentType := ctNone;
    lparam.Kind := pkGETorPOST;
    lparam.Options := [poDoNotEncode];


    RESTRequest.Execute;
    if not RESTResponse.Status.Success then
      showmessage(RESTResponse.StatusText + ' ' +
        inttostr(RESTResponse.StatusCode))
    else
    begin
      memTerminal.Lines.Text := RESTResponse.JSONText;
      jsonObj := RESTResponse.JSONValue as TJSONObject;
      jsonObjSub := jsonObj.GetValue('rates') as TJSONObject;

      valTrend := wigTrendIndicator.Values.Add;
      valTrend.Value := strtofloat(jsonObjSub.Values['USD'].value);
      wigTrendIndicator.Value := valTrend.Value;
    end;
  finally
    wigTrendIndicator.Values.EndUpdate;
    tmrTrendIndicatorUpdate.Enabled := true;
  end;

end;

end.
