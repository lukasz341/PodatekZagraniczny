unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, DateTimePicker, Forms, Controls, Graphics,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls,DateUtils;

type

  { TForm1 }

  TForm1 = class(TForm)
    //d4: TValueRelationship;
    Button1: TButton;
    Button2: TButton;
    datado: TDateTimePicker;
    datakursu: TDateTimePicker;
    dataod: TDateTimePicker;
    Edit1: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit2: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Kraj: TComboBox;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    PageControl1: TPageControl;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape6: TShape;
    TabSheet1: TTabSheet;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure dateClick1(Sender: TObject);
     procedure dateClick2(Sender: TObject);
     procedure dataodclick1(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }
 var
   dieta:real;
   datakursu1:string;
   kurseuro:real;
   iloscdni:integer;
   przychodeuro, podatekeuro, kosztypln,przychodpln, przychodkoszty, podatekpln:real;
   styczen, luty, marzec, kwiecien, maj, czerwiec, lipiec, sierpien:real;
   wrzesien, pazdziernik, listopad, grudzien, suma:real;
   d1,d2, d3:TDate;
  // d4:  TValueRelationship;


procedure TForm1.Button1Click(Sender: TObject);
begin



   dieta:=StrToFloat(edit9.text);
 datakursu1:=FormatDateTime('yyyymmdd',datakursu.date);


 kurseuro:=StrToFloat(edit1.text);
 iloscdni:=StrToInt(edit2.text);
 przychodeuro:=StrToFloat(edit3.text);
 podatekeuro:=StrToFloat(edit4.text);
 kosztypln:=StrToFloat(edit5.text);
 przychodpln:=(przychodeuro-(iloscdni*0.3*dieta))*kurseuro;  //przychody w zlotówkach
 edit6.text:=FormatFloat('0.00',przychodpln);

 przychodkoszty:=przychodpln-kosztypln;
 edit7.text:=FormatFloat('0.00',przychodkoszty);

 podatekpln:=podatekeuro*kurseuro;
 edit8.text:=FormatFloat('0.00',podatekpln);


 if (kraj.text='Niemcy') or (kraj.text='Francja') then showmessage ('Kwotę: '+edit7.text+' należy wpisać w kolumnie B w załączniku PIT/ZG');
 if (kraj.text='Belgia') or (kraj.text='Holandia') then showmessage ('Kwotę: '+edit7.text+' należy wpisać w kolumnie C, a kwotę: '+edit8.text+ ' w kolumnie D w załączniku PIT/ZG');


end;

procedure TForm1.dateclick1(Sender: TObject);

begin

 datakursu1:=FormatDateTime('yyyymmdd',datakursu.date);
 //rok 2016
if datakursu1='20160104' then edit1.text:='4,2935' else
if datakursu1='20160105' then edit1.text:='4,3176' else
if datakursu1='20160107' then edit1.text:='4,3475' else
if datakursu1='20160108' then edit1.text:='4,3457' else
if datakursu1='20160111' then edit1.text:='4,3635' else
if datakursu1='20160112' then edit1.text:='4,3621' else
if datakursu1='20160113' then edit1.text:='4,3345' else
if datakursu1='20160114' then edit1.text:='4,3605' else
if datakursu1='20160115' then edit1.text:='4,4075' else
if datakursu1='20160118' then edit1.text:='4,4835' else
if datakursu1='20160119' then edit1.text:='4,449' else
if datakursu1='20160120' then edit1.text:='4,4659' else
if datakursu1='20160121' then edit1.text:='4,4987' else
if datakursu1='20160122' then edit1.text:='4,446' else
if datakursu1='20160125' then edit1.text:='4,472' else
if datakursu1='20160126' then edit1.text:='4,4961' else
if datakursu1='20160127' then edit1.text:='4,473' else
if datakursu1='20160128' then edit1.text:='4,4588' else
if datakursu1='20160129' then edit1.text:='4,4405' else
if datakursu1='20160201' then edit1.text:='4,4104' else
if datakursu1='20160202' then edit1.text:='4,4015' else
if datakursu1='20160203' then edit1.text:='4,4024' else
if datakursu1='20160204' then edit1.text:='4,4078' else
if datakursu1='20160205' then edit1.text:='4,4135' else
if datakursu1='20160208' then edit1.text:='4,4185' else
if datakursu1='20160209' then edit1.text:='4,449' else
if datakursu1='20160210' then edit1.text:='4,4366' else
if datakursu1='20160211' then edit1.text:='4,4407' else
if datakursu1='20160212' then edit1.text:='4,4136' else
if datakursu1='20160215' then edit1.text:='4,396' else
if datakursu1='20160216' then edit1.text:='4,4042' else
if datakursu1='20160217' then edit1.text:='4,3905' else
if datakursu1='20160218' then edit1.text:='4,3902' else
if datakursu1='20160219' then edit1.text:='4,383' else
if datakursu1='20160222' then edit1.text:='4,3655' else
if datakursu1='20160223' then edit1.text:='4,3655' else
if datakursu1='20160224' then edit1.text:='4,372' else
if datakursu1='20160225' then edit1.text:='4,3739' else
if datakursu1='20160226' then edit1.text:='4,357' else
if datakursu1='20160229' then edit1.text:='4,3589' else
if datakursu1='20160301' then edit1.text:='4,3365' else
if datakursu1='20160302' then edit1.text:='4,3333' else
if datakursu1='20160303' then edit1.text:='4,325' else
if datakursu1='20160304' then edit1.text:='4,334' else
if datakursu1='20160307' then edit1.text:='4,3292' else
if datakursu1='20160308' then edit1.text:='4,3325' else
if datakursu1='20160309' then edit1.text:='4,3215' else
if datakursu1='20160310' then edit1.text:='4,3131' else
if datakursu1='20160311' then edit1.text:='4,3226' else
if datakursu1='20160314' then edit1.text:='4,2813' else
if datakursu1='20160315' then edit1.text:='4,2824' else
if datakursu1='20160316' then edit1.text:='4,298' else
if datakursu1='20160317' then edit1.text:='4,2989' else
if datakursu1='20160318' then edit1.text:='4,2705' else
if datakursu1='20160321' then edit1.text:='4,2603' else
if datakursu1='20160322' then edit1.text:='4,259' else
if datakursu1='20160323' then edit1.text:='4,2533' else
if datakursu1='20160324' then edit1.text:='4,2715' else
if datakursu1='20160325' then edit1.text:='4,263' else
if datakursu1='20160329' then edit1.text:='4,2535' else
if datakursu1='20160330' then edit1.text:='4,2445' else
if datakursu1='20160331' then edit1.text:='4,2684' else
if datakursu1='20160401' then edit1.text:='4,2387' else
if datakursu1='20160404' then edit1.text:='4,2355' else
if datakursu1='20160405' then edit1.text:='4,2452' else
if datakursu1='20160406' then edit1.text:='4,2577' else
if datakursu1='20160407' then edit1.text:='4,2601' else
if datakursu1='20160408' then edit1.text:='4,293' else
if datakursu1='20160411' then edit1.text:='4,2826' else
if datakursu1='20160412' then edit1.text:='4,2867' else
if datakursu1='20160413' then edit1.text:='4,2827' else
if datakursu1='20160414' then edit1.text:='4,3016' else
if datakursu1='20160415' then edit1.text:='4,3' else
if datakursu1='20160418' then edit1.text:='4,2978' else
if datakursu1='20160419' then edit1.text:='4,2977' else
if datakursu1='20160420' then edit1.text:='4,3004' else
if datakursu1='20160421' then edit1.text:='4,2885' else
if datakursu1='20160422' then edit1.text:='4,3283' else
if datakursu1='20160425' then edit1.text:='4,386' else
if datakursu1='20160426' then edit1.text:='4,3978' else
if datakursu1='20160427' then edit1.text:='4,3926' else
if datakursu1='20160428' then edit1.text:='4,394' else
if datakursu1='20160429' then edit1.text:='4,4078' else
if datakursu1='20160502' then edit1.text:='4,3842' else
if datakursu1='20160504' then edit1.text:='4,3992' else
if datakursu1='20160505' then edit1.text:='4,4003' else
if datakursu1='20160506' then edit1.text:='4,4236' else
if datakursu1='20160509' then edit1.text:='4,4123' else
if datakursu1='20160510' then edit1.text:='4,4275' else
if datakursu1='20160511' then edit1.text:='4,4241' else
if datakursu1='20160512' then edit1.text:='4,4275' else
if datakursu1='20160513' then edit1.text:='4,4016' else
if datakursu1='20160516' then edit1.text:='4,3727' else
if datakursu1='20160517' then edit1.text:='4,361' else
if datakursu1='20160518' then edit1.text:='4,3937' else
if datakursu1='20160519' then edit1.text:='4,396' else
if datakursu1='20160520' then edit1.text:='4,4163' else
if datakursu1='20160523' then edit1.text:='4,4293' else
if datakursu1='20160524' then edit1.text:='4,4482' else
if datakursu1='20160525' then edit1.text:='4,4238' else
if datakursu1='20160527' then edit1.text:='4,4063' else
if datakursu1='20160530' then edit1.text:='4,3945' else
if datakursu1='20160531' then edit1.text:='4,382' else
if datakursu1='20160601' then edit1.text:='4,3895' else
if datakursu1='20160602' then edit1.text:='4,3944' else
if datakursu1='20160603' then edit1.text:='4,3913' else
if datakursu1='20160606' then edit1.text:='4,3835' else
if datakursu1='20160607' then edit1.text:='4,3533' else
if datakursu1='20160608' then edit1.text:='4,3377' else
if datakursu1='20160609' then edit1.text:='4,3334' else
if datakursu1='20160610' then edit1.text:='4,3558' else
if datakursu1='20160613' then edit1.text:='4,39' else
if datakursu1='20160614' then edit1.text:='4,4363' else
if datakursu1='20160615' then edit1.text:='4,4155' else
if datakursu1='20160616' then edit1.text:='4,4445' else
if datakursu1='20160617' then edit1.text:='4,4363' else
if datakursu1='20160620' then edit1.text:='4,3945' else
if datakursu1='20160621' then edit1.text:='4,3935' else
if datakursu1='20160622' then edit1.text:='4,39' else
if datakursu1='20160623' then edit1.text:='4,3806' else
if datakursu1='20160624' then edit1.text:='4,4526' else
if datakursu1='20160627' then edit1.text:='4,4485' else
if datakursu1='20160628' then edit1.text:='4,4244' else
if datakursu1='20160629' then edit1.text:='4,414' else
if datakursu1='20160630' then edit1.text:='4,4255' else
if datakursu1='20160701' then edit1.text:='4,3921' else
if datakursu1='20160704' then edit1.text:='4,4304' else
if datakursu1='20160705' then edit1.text:='4,4501' else
if datakursu1='20160706' then edit1.text:='4,4469' else
if datakursu1='20160707' then edit1.text:='4,438' else
if datakursu1='20160708' then edit1.text:='4,4295' else
if datakursu1='20160711' then edit1.text:='4,417' else
if datakursu1='20160712' then edit1.text:='4,4224' else
if datakursu1='20160713' then edit1.text:='4,4016' else
if datakursu1='20160714' then edit1.text:='4,407' else
if datakursu1='20160715' then edit1.text:='4,4121' else
if datakursu1='20160718' then edit1.text:='4,4032' else
if datakursu1='20160719' then edit1.text:='4,3811' else
if datakursu1='20160720' then edit1.text:='4,3776' else
if datakursu1='20160721' then edit1.text:='4,3706' else
if datakursu1='20160722' then edit1.text:='4,3564' else
if datakursu1='20160725' then edit1.text:='4,36' else
if datakursu1='20160726' then edit1.text:='4,3694' else
if datakursu1='20160727' then edit1.text:='4,3695' else
if datakursu1='20160728' then edit1.text:='4,3736' else
if datakursu1='20160729' then edit1.text:='4,3684' else
if datakursu1='20160801' then edit1.text:='4,3576' else
if datakursu1='20160802' then edit1.text:='4,3484' else
if datakursu1='20160803' then edit1.text:='4,3135' else
if datakursu1='20160804' then edit1.text:='4,2971' else
if datakursu1='20160805' then edit1.text:='4,2975' else
if datakursu1='20160808' then edit1.text:='4,2912' else
if datakursu1='20160809' then edit1.text:='4,2693' else
if datakursu1='20160810' then edit1.text:='4,2632' else
if datakursu1='20160811' then edit1.text:='4,2674' else
if datakursu1='20160812' then edit1.text:='4,2626' else
if datakursu1='20160816' then edit1.text:='4,27' else
if datakursu1='20160817' then edit1.text:='4,2863' else
if datakursu1='20160818' then edit1.text:='4,2837' else
if datakursu1='20160819' then edit1.text:='4,2884' else
if datakursu1='20160822' then edit1.text:='4,303' else
if datakursu1='20160823' then edit1.text:='4,3139' else
if datakursu1='20160824' then edit1.text:='4,3116' else
if datakursu1='20160825' then edit1.text:='4,3095' else
if datakursu1='20160826' then edit1.text:='4,327' else
if datakursu1='20160829' then edit1.text:='4,3395' else
if datakursu1='20160830' then edit1.text:='4,3395' else
if datakursu1='20160831' then edit1.text:='4,3555' else
if datakursu1='20160901' then edit1.text:='4,3607' else
if datakursu1='20160902' then edit1.text:='4,3796' else
if datakursu1='20160905' then edit1.text:='4,348' else
if datakursu1='20160906' then edit1.text:='4,3396' else
if datakursu1='20160907' then edit1.text:='4,3289' else
if datakursu1='20160908' then edit1.text:='4,3122' else
if datakursu1='20160909' then edit1.text:='4,3264' else
if datakursu1='20160912' then edit1.text:='4,346' else
if datakursu1='20160913' then edit1.text:='4,352' else
if datakursu1='20160914' then edit1.text:='4,3455' else
if datakursu1='20160915' then edit1.text:='4,3356' else
if datakursu1='20160916' then edit1.text:='4,3244' else
if datakursu1='20160919' then edit1.text:='4,3071' else
if datakursu1='20160920' then edit1.text:='4,3019' else
if datakursu1='20160921' then edit1.text:='4,3034' else
if datakursu1='20160922' then edit1.text:='4,2856' else
if datakursu1='20160923' then edit1.text:='4,2939' else
if datakursu1='20160926' then edit1.text:='4,3075' else
if datakursu1='20160927' then edit1.text:='4,2972' else
if datakursu1='20160928' then edit1.text:='4,2918' else
if datakursu1='20160929' then edit1.text:='4,3014' else
if datakursu1='20160930' then edit1.text:='4,312' else
if datakursu1='20161003' then edit1.text:='4,2976' else
if datakursu1='20161004' then edit1.text:='4,2984' else
if datakursu1='20161005' then edit1.text:='4,3014' else
if datakursu1='20161006' then edit1.text:='4,2974' else
if datakursu1='20161007' then edit1.text:='4,2853' else
if datakursu1='20161010' then edit1.text:='4,2835' else
if datakursu1='20161011' then edit1.text:='4,2767' else
if datakursu1='20161012' then edit1.text:='4,2825' else
if datakursu1='20161013' then edit1.text:='4,3065' else
if datakursu1='20161014' then edit1.text:='4,2955' else
if datakursu1='20161017' then edit1.text:='4,3142' else
if datakursu1='20161018' then edit1.text:='4,3137' else
if datakursu1='20161019' then edit1.text:='4,3204' else
if datakursu1='20161020' then edit1.text:='4,3189' else
if datakursu1='20161021' then edit1.text:='4,33' else
if datakursu1='20161024' then edit1.text:='4,3225' else
if datakursu1='20161025' then edit1.text:='4,3058' else
if datakursu1='20161026' then edit1.text:='4,3178' else
if datakursu1='20161027' then edit1.text:='4,3388' else
if datakursu1='20161028' then edit1.text:='4,3293' else
if datakursu1='20161031' then edit1.text:='4,3267' else
if datakursu1='20161102' then edit1.text:='4,3169' else
if datakursu1='20161103' then edit1.text:='4,3238' else
if datakursu1='20161104' then edit1.text:='4,3133' else
if datakursu1='20161107' then edit1.text:='4,3283' else
if datakursu1='20161108' then edit1.text:='4,3285' else
if datakursu1='20161109' then edit1.text:='4,3455' else
if datakursu1='20161110' then edit1.text:='4,3424' else
if datakursu1='20161114' then edit1.text:='4,3892' else
if datakursu1='20161115' then edit1.text:='4,4098' else
if datakursu1='20161116' then edit1.text:='4,4345' else
if datakursu1='20161117' then edit1.text:='4,4386' else
if datakursu1='20161118' then edit1.text:='4,4484' else
if datakursu1='20161121' then edit1.text:='4,439' else
if datakursu1='20161122' then edit1.text:='4,4199' else
if datakursu1='20161123' then edit1.text:='4,4131' else
if datakursu1='20161124' then edit1.text:='4,4261' else
if datakursu1='20161125' then edit1.text:='4,4106' else
if datakursu1='20161128' then edit1.text:='4,419' else
if datakursu1='20161129' then edit1.text:='4,4328' else
if datakursu1='20161130' then edit1.text:='4,4384' else
if datakursu1='20161201' then edit1.text:='4,462' else
if datakursu1='20161202' then edit1.text:='4,4885' else
if datakursu1='20161205' then edit1.text:='4,4897' else
if datakursu1='20161206' then edit1.text:='4,5035' else
if datakursu1='20161207' then edit1.text:='4,4232' else
if datakursu1='20161208' then edit1.text:='4,4401' else
if datakursu1='20161209' then edit1.text:='4,4385' else
if datakursu1='20161212' then edit1.text:='4,4583' else
if datakursu1='20161213' then edit1.text:='4,4505' else
if datakursu1='20161214' then edit1.text:='4,4389' else
if datakursu1='20161215' then edit1.text:='4,4453' else
if datakursu1='20161216' then edit1.text:='4,4253' else
if datakursu1='20161219' then edit1.text:='4,4157' else
if datakursu1='20161220' then edit1.text:='4,4128' else
if datakursu1='20161221' then edit1.text:='4,418' else
if datakursu1='20161222' then edit1.text:='4,4089' else
if datakursu1='20161223' then edit1.text:='4,4126' else
if datakursu1='20161227' then edit1.text:='4,4022' else
if datakursu1='20161228' then edit1.text:='4,4127' else
if datakursu1='20161229' then edit1.text:='4,4131' else
if datakursu1='20161230' then edit1.text:='4,424' else

//rok 2015
if datakursu1='20150102' then edit1.text:='4,3078' else
if datakursu1='20150105' then edit1.text:='4,3008' else
if datakursu1='20150107' then edit1.text:='4,3115' else
if datakursu1='20150108' then edit1.text:='4,2985' else
if datakursu1='20150109' then edit1.text:='4,2837' else
if datakursu1='20150112' then edit1.text:='4,2782' else
if datakursu1='20150113' then edit1.text:='4,2802' else
if datakursu1='20150114' then edit1.text:='4,2885' else
if datakursu1='20150115' then edit1.text:='4,2897' else
if datakursu1='20150116' then edit1.text:='4,322' else
if datakursu1='20150119' then edit1.text:='4,3165' else
if datakursu1='20150120' then edit1.text:='4,3335' else
if datakursu1='20150121' then edit1.text:='4,3218' else
if datakursu1='20150122' then edit1.text:='4,2997' else
if datakursu1='20150123' then edit1.text:='4,2354' else
if datakursu1='20150126' then edit1.text:='4,2293' else
if datakursu1='20150127' then edit1.text:='4,2285' else
if datakursu1='20150128' then edit1.text:='4,2348' else
if datakursu1='20150129' then edit1.text:='4,2344' else
if datakursu1='20150130' then edit1.text:='4,2081' else
if datakursu1='20150202' then edit1.text:='4,1762' else
if datakursu1='20150203' then edit1.text:='4,1812' else
if datakursu1='20150204' then edit1.text:='4,1712' else
if datakursu1='20150205' then edit1.text:='4,1739' else
if datakursu1='20150206' then edit1.text:='4,1695' else
if datakursu1='20150209' then edit1.text:='4,176' else
if datakursu1='20150210' then edit1.text:='4,2017' else
if datakursu1='20150211' then edit1.text:='4,1999' else
if datakursu1='20150212' then edit1.text:='4,1884' else
if datakursu1='20150213' then edit1.text:='4,1783' else
if datakursu1='20150216' then edit1.text:='4,1812' else
if datakursu1='20150217' then edit1.text:='4,1904' else
if datakursu1='20150218' then edit1.text:='4,1905' else
if datakursu1='20150219' then edit1.text:='4,177' else
if datakursu1='20150220' then edit1.text:='4,18' else
if datakursu1='20150223' then edit1.text:='4,1777' else
if datakursu1='20150224' then edit1.text:='4,1763' else
if datakursu1='20150225' then edit1.text:='4,1668' else
if datakursu1='20150226' then edit1.text:='4,1542' else
if datakursu1='20150227' then edit1.text:='4,1495' else
if datakursu1='20150302' then edit1.text:='4,1559' else
if datakursu1='20150303' then edit1.text:='4,1557' else
if datakursu1='20150304' then edit1.text:='4,1723' else
if datakursu1='20150305' then edit1.text:='4,1415' else
if datakursu1='20150306' then edit1.text:='4,1292' else
if datakursu1='20150309' then edit1.text:='4,1259' else
if datakursu1='20150310' then edit1.text:='4,1233' else
if datakursu1='20150311' then edit1.text:='4,1435' else
if datakursu1='20150312' then edit1.text:='4,1251' else
if datakursu1='20150313' then edit1.text:='4,1529' else
if datakursu1='20150316' then edit1.text:='4,1373' else
if datakursu1='20150317' then edit1.text:='4,1397' else
if datakursu1='20150318' then edit1.text:='4,145' else
if datakursu1='20150319' then edit1.text:='4,123' else
if datakursu1='20150320' then edit1.text:='4,1255' else
if datakursu1='20150323' then edit1.text:='4,1287' else
if datakursu1='20150324' then edit1.text:='4,109' else
if datakursu1='20150325' then edit1.text:='4,0927' else
if datakursu1='20150326' then edit1.text:='4,0886' else
if datakursu1='20150327' then edit1.text:='4,0993' else
if datakursu1='20150330' then edit1.text:='4,094' else
if datakursu1='20150331' then edit1.text:='4,089' else
if datakursu1='20150401' then edit1.text:='4,0665' else
if datakursu1='20150402' then edit1.text:='4,064' else
if datakursu1='20150403' then edit1.text:='4,0748' else
if datakursu1='20150407' then edit1.text:='4,0615' else
if datakursu1='20150408' then edit1.text:='4,034' else
if datakursu1='20150409' then edit1.text:='4,0198' else
if datakursu1='20150410' then edit1.text:='4,0198' else
if datakursu1='20150413' then edit1.text:='4,0198' else
if datakursu1='20150414' then edit1.text:='4,0088' else
if datakursu1='20150415' then edit1.text:='4,0083' else
if datakursu1='20150416' then edit1.text:='4,014' else
if datakursu1='20150417' then edit1.text:='4,033' else
if datakursu1='20150420' then edit1.text:='4,0112' else
if datakursu1='20150421' then edit1.text:='3,9822' else
if datakursu1='20150422' then edit1.text:='4,0015' else
if datakursu1='20150423' then edit1.text:='4,0075' else
if datakursu1='20150424' then edit1.text:='4,0161' else
if datakursu1='20150427' then edit1.text:='4,0214' else
if datakursu1='20150428' then edit1.text:='4,0075' else
if datakursu1='20150429' then edit1.text:='4,006' else
if datakursu1='20150430' then edit1.text:='4,0337' else
if datakursu1='20150504' then edit1.text:='4,0465' else
if datakursu1='20150505' then edit1.text:='4,0179' else
if datakursu1='20150506' then edit1.text:='4,0552' else
if datakursu1='20150507' then edit1.text:='4,0685' else
if datakursu1='20150508' then edit1.text:='4,0552' else
if datakursu1='20150511' then edit1.text:='4,0767' else
if datakursu1='20150512' then edit1.text:='4,103' else
if datakursu1='20150513' then edit1.text:='4,0765' else
if datakursu1='20150514' then edit1.text:='4,0945' else
if datakursu1='20150515' then edit1.text:='4,0587' else
if datakursu1='20150518' then edit1.text:='4,0468' else
if datakursu1='20150519' then edit1.text:='4,0465' else
if datakursu1='20150520' then edit1.text:='4,0606' else
if datakursu1='20150521' then edit1.text:='4,0836' else
if datakursu1='20150522' then edit1.text:='4,098' else
if datakursu1='20150525' then edit1.text:='4,1149' else
if datakursu1='20150526' then edit1.text:='4,1279' else
if datakursu1='20150527' then edit1.text:='4,1405' else
if datakursu1='20150528' then edit1.text:='4,1419' else
if datakursu1='20150529' then edit1.text:='4,1301' else
if datakursu1='20150601' then edit1.text:='4,126' else
if datakursu1='20150602' then edit1.text:='4,1374' else
if datakursu1='20150603' then edit1.text:='4,1307' else
if datakursu1='20150605' then edit1.text:='4,16' else
if datakursu1='20150608' then edit1.text:='4,1559' else
if datakursu1='20150609' then edit1.text:='4,1705' else
if datakursu1='20150610' then edit1.text:='4,1602' else
if datakursu1='20150611' then edit1.text:='4,1481' else
if datakursu1='20150612' then edit1.text:='4,1423' else
if datakursu1='20150615' then edit1.text:='4,1486' else
if datakursu1='20150616' then edit1.text:='4,1595' else
if datakursu1='20150617' then edit1.text:='4,1535' else
if datakursu1='20150618' then edit1.text:='4,1615' else
if datakursu1='20150619' then edit1.text:='4,1715' else
if datakursu1='20150622' then edit1.text:='4,1724' else
if datakursu1='20150623' then edit1.text:='4,1637' else
if datakursu1='20150624' then edit1.text:='4,164' else
if datakursu1='20150625' then edit1.text:='4,1737' else
if datakursu1='20150626' then edit1.text:='4,1764' else
if datakursu1='20150629' then edit1.text:='4,1893' else
if datakursu1='20150630' then edit1.text:='4,1944' else
if datakursu1='20150701' then edit1.text:='4,1923' else
if datakursu1='20150702' then edit1.text:='4,1935' else
if datakursu1='20150703' then edit1.text:='4,1896' else
if datakursu1='20150706' then edit1.text:='4,199' else
if datakursu1='20150707' then edit1.text:='4,2026' else
if datakursu1='20150708' then edit1.text:='4,2213' else
if datakursu1='20150709' then edit1.text:='4,2277' else
if datakursu1='20150710' then edit1.text:='4,1905' else
if datakursu1='20150713' then edit1.text:='4,155' else
if datakursu1='20150714' then edit1.text:='4,1545' else
if datakursu1='20150715' then edit1.text:='4,1319' else
if datakursu1='20150716' then edit1.text:='4,1111' else
if datakursu1='20150717' then edit1.text:='4,1021' else
if datakursu1='20150720' then edit1.text:='4,1083' else
if datakursu1='20150721' then edit1.text:='4,1112' else
if datakursu1='20150722' then edit1.text:='4,1174' else
if datakursu1='20150723' then edit1.text:='4,1285' else
if datakursu1='20150724' then edit1.text:='4,1195' else
if datakursu1='20150727' then edit1.text:='4,1495' else
if datakursu1='20150728' then edit1.text:='4,128' else
if datakursu1='20150729' then edit1.text:='4,1452' else
if datakursu1='20150730' then edit1.text:='4,1429' else
if datakursu1='20150731' then edit1.text:='4,1488' else
if datakursu1='20150803' then edit1.text:='4,136' else
if datakursu1='20150804' then edit1.text:='4,1463' else
if datakursu1='20150805' then edit1.text:='4,1655' else
if datakursu1='20150806' then edit1.text:='4,1798' else
if datakursu1='20150807' then edit1.text:='4,1868' else
if datakursu1='20150810' then edit1.text:='4,1933' else
if datakursu1='20150811' then edit1.text:='4,2035' else
if datakursu1='20150812' then edit1.text:='4,2093' else
if datakursu1='20150813' then edit1.text:='4,1822' else
if datakursu1='20150814' then edit1.text:='4,1849' else
if datakursu1='20150817' then edit1.text:='4,1775' else
if datakursu1='20150818' then edit1.text:='4,1616' else
if datakursu1='20150819' then edit1.text:='4,169' else
if datakursu1='20150820' then edit1.text:='4,1946' else
if datakursu1='20150821' then edit1.text:='4,2014' else
if datakursu1='20150824' then edit1.text:='4,239' else
if datakursu1='20150825' then edit1.text:='4,2309' else
if datakursu1='20150826' then edit1.text:='4,2381' else
if datakursu1='20150827' then edit1.text:='4,2255' else
if datakursu1='20150828' then edit1.text:='4,2325' else
if datakursu1='20150831' then edit1.text:='4,2344' else
if datakursu1='20150901' then edit1.text:='4,2297' else
if datakursu1='20150902' then edit1.text:='4,244' else
if datakursu1='20150903' then edit1.text:='4,2314' else
if datakursu1='20150904' then edit1.text:='4,229' else
if datakursu1='20150907' then edit1.text:='4,2335' else
if datakursu1='20150908' then edit1.text:='4,236' else
if datakursu1='20150909' then edit1.text:='4,2129' else
if datakursu1='20150910' then edit1.text:='4,2153' else
if datakursu1='20150911' then edit1.text:='4,208' else
if datakursu1='20150914' then edit1.text:='4,209' else
if datakursu1='20150915' then edit1.text:='4,2094' else
if datakursu1='20150916' then edit1.text:='4,1994' else
if datakursu1='20150917' then edit1.text:='4,2065' else
if datakursu1='20150918' then edit1.text:='4,2059' else
if datakursu1='20150921' then edit1.text:='4,1896' else
if datakursu1='20150922' then edit1.text:='4,1924' else
if datakursu1='20150923' then edit1.text:='4,2007' else
if datakursu1='20150924' then edit1.text:='4,22' else
if datakursu1='20150925' then edit1.text:='4,2115' else
if datakursu1='20150928' then edit1.text:='4,2334' else
if datakursu1='20150929' then edit1.text:='4,2434' else
if datakursu1='20150930' then edit1.text:='4,2386' else
if datakursu1='20151001' then edit1.text:='4,2437' else
if datakursu1='20151002' then edit1.text:='4,2451' else
if datakursu1='20151005' then edit1.text:='4,2475' else
if datakursu1='20151006' then edit1.text:='4,2453' else
if datakursu1='20151007' then edit1.text:='4,2272' else
if datakursu1='20151008' then edit1.text:='4,2405' else
if datakursu1='20151009' then edit1.text:='4,217' else
if datakursu1='20151012' then edit1.text:='4,2273' else
if datakursu1='20151013' then edit1.text:='4,2336' else
if datakursu1='20151014' then edit1.text:='4,2365' else
if datakursu1='20151015' then edit1.text:='4,2295' else
if datakursu1='20151016' then edit1.text:='4,2315' else
if datakursu1='20151019' then edit1.text:='4,2342' else
if datakursu1='20151020' then edit1.text:='4,2472' else
if datakursu1='20151021' then edit1.text:='4,2745' else
if datakursu1='20151022' then edit1.text:='4,2769' else
if datakursu1='20151023' then edit1.text:='4,252' else
if datakursu1='20151026' then edit1.text:='4,2605' else
if datakursu1='20151027' then edit1.text:='4,2709' else
if datakursu1='20151028' then edit1.text:='4,2902' else
if datakursu1='20151029' then edit1.text:='4,2732' else
if datakursu1='20151030' then edit1.text:='4,2652' else
if datakursu1='20151102' then edit1.text:='4,249' else
if datakursu1='20151103' then edit1.text:='4,2495' else
if datakursu1='20151104' then edit1.text:='4,2455' else
if datakursu1='20151105' then edit1.text:='4,2306' else
if datakursu1='20151106' then edit1.text:='4,2458' else
if datakursu1='20151109' then edit1.text:='4,2651' else
if datakursu1='20151110' then edit1.text:='4,2485' else
if datakursu1='20151112' then edit1.text:='4,2245' else
if datakursu1='20151113' then edit1.text:='4,2362' else
if datakursu1='20151116' then edit1.text:='4,2472' else
if datakursu1='20151117' then edit1.text:='4,2433' else
if datakursu1='20151118' then edit1.text:='4,2509' else
if datakursu1='20151119' then edit1.text:='4,2477' else
if datakursu1='20151120' then edit1.text:='4,2441' else
if datakursu1='20151123' then edit1.text:='4,2395' else
if datakursu1='20151124' then edit1.text:='4,2609' else
if datakursu1='20151125' then edit1.text:='4,268' else
if datakursu1='20151126' then edit1.text:='4,2763' else
if datakursu1='20151127' then edit1.text:='4,2692' else
if datakursu1='20151130' then edit1.text:='4,2639' else
if datakursu1='20151201' then edit1.text:='4,2651' else
if datakursu1='20151202' then edit1.text:='4,2815' else
if datakursu1='20151203' then edit1.text:='4,2665' else
if datakursu1='20151204' then edit1.text:='4,3141' else
if datakursu1='20151207' then edit1.text:='4,3111' else
if datakursu1='20151208' then edit1.text:='4,3282' else
if datakursu1='20151209' then edit1.text:='4,3402' else
if datakursu1='20151210' then edit1.text:='4,344' else
if datakursu1='20151211' then edit1.text:='4,3471' else
if datakursu1='20151214' then edit1.text:='4,35' else
if datakursu1='20151215' then edit1.text:='4,358' else
if datakursu1='20151216' then edit1.text:='4,3304' else
if datakursu1='20151217' then edit1.text:='4,3048' else
if datakursu1='20151218' then edit1.text:='4,2816' else
if datakursu1='20151221' then edit1.text:='4,2545' else
if datakursu1='20151222' then edit1.text:='4,2411' else
if datakursu1='20151223' then edit1.text:='4,246' else
if datakursu1='20151224' then edit1.text:='4,2411' else
if datakursu1='20151228' then edit1.text:='4,2448' else
if datakursu1='20151229' then edit1.text:='4,244' else
if datakursu1='20151230' then edit1.text:='4,2423' else
if datakursu1='20151231' then edit1.text:='4,2615' else

//rok 2014

if datakursu1='20140102' then edit1.text:='4,1631' else
if datakursu1='20140103' then edit1.text:='4,1645' else
if datakursu1='20140107' then edit1.text:='4,1798' else
if datakursu1='20140108' then edit1.text:='4,1789' else
if datakursu1='20140109' then edit1.text:='4,1776' else
if datakursu1='20140110' then edit1.text:='4,1745' else
if datakursu1='20140113' then edit1.text:='4,16' else
if datakursu1='20140114' then edit1.text:='4,1565' else
if datakursu1='20140115' then edit1.text:='4,1522' else
if datakursu1='20140116' then edit1.text:='4,1647' else
if datakursu1='20140117' then edit1.text:='4,1601' else
if datakursu1='20140120' then edit1.text:='4,1586' else
if datakursu1='20140121' then edit1.text:='4,1647' else
if datakursu1='20140122' then edit1.text:='4,1669' else
if datakursu1='20140123' then edit1.text:='4,1679' else
if datakursu1='20140124' then edit1.text:='4,2014' else
if datakursu1='20140127' then edit1.text:='4,2291' else
if datakursu1='20140128' then edit1.text:='4,1827' else
if datakursu1='20140129' then edit1.text:='4,2155' else
if datakursu1='20140130' then edit1.text:='4,2365' else
if datakursu1='20140131' then edit1.text:='4,2368' else
if datakursu1='20140203' then edit1.text:='4,2375' else
if datakursu1='20140204' then edit1.text:='4,214' else
if datakursu1='20140205' then edit1.text:='4,1887' else
if datakursu1='20140206' then edit1.text:='4,186' else
if datakursu1='20140207' then edit1.text:='4,1865' else
if datakursu1='20140210' then edit1.text:='4,1822' else
if datakursu1='20140211' then edit1.text:='4,1798' else
if datakursu1='20140212' then edit1.text:='4,1686' else
if datakursu1='20140213' then edit1.text:='4,1752' else
if datakursu1='20140214' then edit1.text:='4,153' else
if datakursu1='20140217' then edit1.text:='4,145' else
if datakursu1='20140218' then edit1.text:='4,1584' else
if datakursu1='20140219' then edit1.text:='4,1638' else
if datakursu1='20140220' then edit1.text:='4,178' else
if datakursu1='20140221' then edit1.text:='4,1681' else
if datakursu1='20140224' then edit1.text:='4,1638' else
if datakursu1='20140225' then edit1.text:='4,1595' else
if datakursu1='20140226' then edit1.text:='4,1584' else
if datakursu1='20140227' then edit1.text:='4,1851' else
if datakursu1='20140228' then edit1.text:='4,1602' else
if datakursu1='20140303' then edit1.text:='4,1978' else
if datakursu1='20140304' then edit1.text:='4,1926' else
if datakursu1='20140305' then edit1.text:='4,186' else
if datakursu1='20140306' then edit1.text:='4,1788' else
if datakursu1='20140307' then edit1.text:='4,1893' else
if datakursu1='20140310' then edit1.text:='4,1991' else
if datakursu1='20140311' then edit1.text:='4,2171' else
if datakursu1='20140312' then edit1.text:='4,229' else
if datakursu1='20140313' then edit1.text:='4,2277' else
if datakursu1='20140314' then edit1.text:='4,2334' else
if datakursu1='20140317' then edit1.text:='4,2295' else
if datakursu1='20140318' then edit1.text:='4,2295' else
if datakursu1='20140319' then edit1.text:='4,2065' else
if datakursu1='20140320' then edit1.text:='4,2089' else
if datakursu1='20140321' then edit1.text:='4,197' else
if datakursu1='20140324' then edit1.text:='4,199' else
if datakursu1='20140325' then edit1.text:='4,191' else
if datakursu1='20140326' then edit1.text:='4,1835' else
if datakursu1='20140327' then edit1.text:='4,1826' else
if datakursu1='20140328' then edit1.text:='4,1677' else
if datakursu1='20140331' then edit1.text:='4,1713' else
if datakursu1='20140401' then edit1.text:='4,1765' else
if datakursu1='20140402' then edit1.text:='4,1774' else
if datakursu1='20140403' then edit1.text:='4,1738' else
if datakursu1='20140404' then edit1.text:='4,1657' else
if datakursu1='20140407' then edit1.text:='4,1748' else
if datakursu1='20140408' then edit1.text:='4,1684' else
if datakursu1='20140409' then edit1.text:='4,1675' else
if datakursu1='20140410' then edit1.text:='4,171' else
if datakursu1='20140411' then edit1.text:='4,1784' else
if datakursu1='20140414' then edit1.text:='4,1855' else
if datakursu1='20140415' then edit1.text:='4,184' else
if datakursu1='20140416' then edit1.text:='4,1925' else
if datakursu1='20140417' then edit1.text:='4,1968' else
if datakursu1='20140418' then edit1.text:='4,182' else
if datakursu1='20140422' then edit1.text:='4,189' else
if datakursu1='20140423' then edit1.text:='4,1914' else
if datakursu1='20140424' then edit1.text:='4,1893' else
if datakursu1='20140425' then edit1.text:='4,203' else
if datakursu1='20140428' then edit1.text:='4,2112' else
if datakursu1='20140429' then edit1.text:='4,2053' else
if datakursu1='20140430' then edit1.text:='4,1994' else
if datakursu1='20140502' then edit1.text:='4,199' else
if datakursu1='20140505' then edit1.text:='4,2056' else
if datakursu1='20140506' then edit1.text:='4,2051' else
if datakursu1='20140507' then edit1.text:='4,2003' else
if datakursu1='20140508' then edit1.text:='4,1865' else
if datakursu1='20140509' then edit1.text:='4,1787' else
if datakursu1='20140512' then edit1.text:='4,1797' else
if datakursu1='20140513' then edit1.text:='4,1815' else
if datakursu1='20140514' then edit1.text:='4,1828' else
if datakursu1='20140515' then edit1.text:='4,1824' else
if datakursu1='20140516' then edit1.text:='4,1935' else
if datakursu1='20140519' then edit1.text:='4,1884' else
if datakursu1='20140520' then edit1.text:='4,1905' else
if datakursu1='20140521' then edit1.text:='4,1885' else
if datakursu1='20140522' then edit1.text:='4,1755' else
if datakursu1='20140523' then edit1.text:='4,1524' else
if datakursu1='20140526' then edit1.text:='4,156' else
if datakursu1='20140527' then edit1.text:='4,1655' else
if datakursu1='20140528' then edit1.text:='4,1678' else
if datakursu1='20140529' then edit1.text:='4,1385' else
if datakursu1='20140530' then edit1.text:='4,142' else
if datakursu1='20140602' then edit1.text:='4,1355' else
if datakursu1='20140603' then edit1.text:='4,1392' else
if datakursu1='20140604' then edit1.text:='4,1527' else
if datakursu1='20140605' then edit1.text:='4,1215' else
if datakursu1='20140606' then edit1.text:='4,1211' else
if datakursu1='20140609' then edit1.text:='4,0998' else
if datakursu1='20140610' then edit1.text:='4,109' else
if datakursu1='20140611' then edit1.text:='4,1157' else
if datakursu1='20140612' then edit1.text:='4,1096' else
if datakursu1='20140613' then edit1.text:='4,1231' else
if datakursu1='20140616' then edit1.text:='4,146' else
if datakursu1='20140617' then edit1.text:='4,1398' else
if datakursu1='20140618' then edit1.text:='4,1463' else
if datakursu1='20140620' then edit1.text:='4,1506' else
if datakursu1='20140623' then edit1.text:='4,1603' else
if datakursu1='20140624' then edit1.text:='4,1587' else
if datakursu1='20140625' then edit1.text:='4,1437' else
if datakursu1='20140626' then edit1.text:='4,1358' else
if datakursu1='20140627' then edit1.text:='4,1528' else
if datakursu1='20140630' then edit1.text:='4,1609' else
if datakursu1='20140701' then edit1.text:='4,155' else
if datakursu1='20140702' then edit1.text:='4,15' else
if datakursu1='20140703' then edit1.text:='4,1536' else
if datakursu1='20140704' then edit1.text:='4,1435' else
if datakursu1='20140707' then edit1.text:='4,1472' else
if datakursu1='20140708' then edit1.text:='4,1401' else
if datakursu1='20140709' then edit1.text:='4,1272' else
if datakursu1='20140710' then edit1.text:='4,1341' else
if datakursu1='20140711' then edit1.text:='4,1419' else
if datakursu1='20140714' then edit1.text:='4,139' else
if datakursu1='20140715' then edit1.text:='4,1433' else
if datakursu1='20140716' then edit1.text:='4,131' else
if datakursu1='20140717' then edit1.text:='4,1378' else
if datakursu1='20140718' then edit1.text:='4,1479' else
if datakursu1='20140721' then edit1.text:='4,1521' else
if datakursu1='20140722' then edit1.text:='4,1464' else
if datakursu1='20140723' then edit1.text:='4,1355' else
if datakursu1='20140724' then edit1.text:='4,1398' else
if datakursu1='20140725' then edit1.text:='4,1459' else
if datakursu1='20140728' then edit1.text:='4,147' else
if datakursu1='20140729' then edit1.text:='4,1524' else
if datakursu1='20140730' then edit1.text:='4,1517' else
if datakursu1='20140731' then edit1.text:='4,164' else
if datakursu1='20140801' then edit1.text:='4,1887' else
if datakursu1='20140804' then edit1.text:='4,1783' else
if datakursu1='20140805' then edit1.text:='4,1679' else
if datakursu1='20140806' then edit1.text:='4,194' else
if datakursu1='20140807' then edit1.text:='4,199' else
if datakursu1='20140808' then edit1.text:='4,2184' else
if datakursu1='20140811' then edit1.text:='4,1998' else
if datakursu1='20140812' then edit1.text:='4,2025' else
if datakursu1='20140813' then edit1.text:='4,198' else
if datakursu1='20140814' then edit1.text:='4,18' else
if datakursu1='20140818' then edit1.text:='4,1951' else
if datakursu1='20140819' then edit1.text:='4,1871' else
if datakursu1='20140820' then edit1.text:='4,1838' else
if datakursu1='20140821' then edit1.text:='4,1893' else
if datakursu1='20140822' then edit1.text:='4,1874' else
if datakursu1='20140825' then edit1.text:='4,1814' else
if datakursu1='20140826' then edit1.text:='4,18' else
if datakursu1='20140827' then edit1.text:='4,188' else
if datakursu1='20140828' then edit1.text:='4,2043' else
if datakursu1='20140829' then edit1.text:='4,2129' else
if datakursu1='20140901' then edit1.text:='4,2099' else
if datakursu1='20140902' then edit1.text:='4,212' else
if datakursu1='20140903' then edit1.text:='4,1937' else
if datakursu1='20140904' then edit1.text:='4,2' else
if datakursu1='20140905' then edit1.text:='4,1908' else
if datakursu1='20140908' then edit1.text:='4,1824' else
if datakursu1='20140909' then edit1.text:='4,1978' else
if datakursu1='20140910' then edit1.text:='4,207' else
if datakursu1='20140911' then edit1.text:='4,1935' else
if datakursu1='20140912' then edit1.text:='4,1957' else
if datakursu1='20140915' then edit1.text:='4,2028' else
if datakursu1='20140916' then edit1.text:='4,197' else
if datakursu1='20140917' then edit1.text:='4,1899' else
if datakursu1='20140918' then edit1.text:='4,188' else
if datakursu1='20140919' then edit1.text:='4,186' else
if datakursu1='20140922' then edit1.text:='4,1845' else
if datakursu1='20140923' then edit1.text:='4,1775' else
if datakursu1='20140924' then edit1.text:='4,1785' else
if datakursu1='20140925' then edit1.text:='4,1757' else
if datakursu1='20140926' then edit1.text:='4,1781' else
if datakursu1='20140929' then edit1.text:='4,1843' else
if datakursu1='20140930' then edit1.text:='4,1755' else
if datakursu1='20141001' then edit1.text:='4,1792' else
if datakursu1='20141002' then edit1.text:='4,178' else
if datakursu1='20141003' then edit1.text:='4,1789' else
if datakursu1='20141006' then edit1.text:='4,1829' else
if datakursu1='20141007' then edit1.text:='4,1825' else
if datakursu1='20141008' then edit1.text:='4,1856' else
if datakursu1='20141009' then edit1.text:='4,1826' else
if datakursu1='20141010' then edit1.text:='4,1795' else
if datakursu1='20141013' then edit1.text:='4,1901' else
if datakursu1='20141014' then edit1.text:='4,1993' else
if datakursu1='20141015' then edit1.text:='4,2089' else
if datakursu1='20141016' then edit1.text:='4,2223' else
if datakursu1='20141017' then edit1.text:='4,2293' else
if datakursu1='20141020' then edit1.text:='4,2232' else
if datakursu1='20141021' then edit1.text:='4,2263' else
if datakursu1='20141022' then edit1.text:='4,2228' else
if datakursu1='20141023' then edit1.text:='4,228' else
if datakursu1='20141024' then edit1.text:='4,2245' else
if datakursu1='20141027' then edit1.text:='4,2229' else
if datakursu1='20141028' then edit1.text:='4,2268' else
if datakursu1='20141029' then edit1.text:='4,2248' else
if datakursu1='20141030' then edit1.text:='4,228' else
if datakursu1='20141031' then edit1.text:='4,2043' else
if datakursu1='20141103' then edit1.text:='4,2209' else
if datakursu1='20141104' then edit1.text:='4,2253' else
if datakursu1='20141105' then edit1.text:='4,231' else
if datakursu1='20141106' then edit1.text:='4,225' else
if datakursu1='20141107' then edit1.text:='4,2243' else
if datakursu1='20141110' then edit1.text:='4,2163' else
if datakursu1='20141112' then edit1.text:='4,2247' else
if datakursu1='20141113' then edit1.text:='4,2203' else
if datakursu1='20141114' then edit1.text:='4,229' else
if datakursu1='20141117' then edit1.text:='4,2255' else
if datakursu1='20141118' then edit1.text:='4,218' else
if datakursu1='20141119' then edit1.text:='4,217' else
if datakursu1='20141120' then edit1.text:='4,2155' else
if datakursu1='20141121' then edit1.text:='4,2088' else
if datakursu1='20141124' then edit1.text:='4,1977' else
if datakursu1='20141125' then edit1.text:='4,1916' else
if datakursu1='20141126' then edit1.text:='4,18' else
if datakursu1='20141127' then edit1.text:='4,1807' else
if datakursu1='20141128' then edit1.text:='4,1814' else
if datakursu1='20141201' then edit1.text:='4,1788' else
if datakursu1='20141202' then edit1.text:='4,162' else
if datakursu1='20141203' then edit1.text:='4,1574' else
if datakursu1='20141204' then edit1.text:='4,1538' else
if datakursu1='20141205' then edit1.text:='4,1585' else
if datakursu1='20141208' then edit1.text:='4,1655' else
if datakursu1='20141209' then edit1.text:='4,1594' else
if datakursu1='20141210' then edit1.text:='4,1595' else
if datakursu1='20141211' then edit1.text:='4,1749' else
if datakursu1='20141212' then edit1.text:='4,1805' else
if datakursu1='20141215' then edit1.text:='4,1761' else
if datakursu1='20141216' then edit1.text:='4,1935' else
if datakursu1='20141217' then edit1.text:='4,2286' else
if datakursu1='20141218' then edit1.text:='4,2365' else
if datakursu1='20141219' then edit1.text:='4,2705' else
if datakursu1='20141222' then edit1.text:='4,2625' else
if datakursu1='20141223' then edit1.text:='4,2743' else
if datakursu1='20141224' then edit1.text:='4,306' else
if datakursu1='20141229' then edit1.text:='4,3053' else
if datakursu1='20141230' then edit1.text:='4,3138' else
if datakursu1='20141231' then edit1.text:='4,2623' else

//rok 2013

if datakursu1='20130102' then edit1.text:='4,0671' else
if datakursu1='20130103' then edit1.text:='4,077' else
if datakursu1='20130104' then edit1.text:='4,1248' else
if datakursu1='20130107' then edit1.text:='4,1218' else
if datakursu1='20130108' then edit1.text:='4,1263' else
if datakursu1='20130109' then edit1.text:='4,1192' else
if datakursu1='20130110' then edit1.text:='4,076' else
if datakursu1='20130111' then edit1.text:='4,0996' else
if datakursu1='20130114' then edit1.text:='4,1231' else
if datakursu1='20130115' then edit1.text:='4,1151' else
if datakursu1='20130116' then edit1.text:='4,128' else
if datakursu1='20130117' then edit1.text:='4,1178' else
if datakursu1='20130118' then edit1.text:='4,1294' else
if datakursu1='20130121' then edit1.text:='4,1762' else
if datakursu1='20130122' then edit1.text:='4,17' else
if datakursu1='20130123' then edit1.text:='4,1591' else
if datakursu1='20130124' then edit1.text:='4,1964' else
if datakursu1='20130125' then edit1.text:='4,1903' else
if datakursu1='20130128' then edit1.text:='4,1805' else
if datakursu1='20130129' then edit1.text:='4,1969' else
if datakursu1='20130130' then edit1.text:='4,1858' else
if datakursu1='20130131' then edit1.text:='4,187' else
if datakursu1='20130201' then edit1.text:='4,2028' else
if datakursu1='20130204' then edit1.text:='4,1515' else
if datakursu1='20130205' then edit1.text:='4,17' else
if datakursu1='20130206' then edit1.text:='4,1801' else
if datakursu1='20130207' then edit1.text:='4,1882' else
if datakursu1='20130208' then edit1.text:='4,167' else
if datakursu1='20130211' then edit1.text:='4,1519' else
if datakursu1='20130212' then edit1.text:='4,1686' else
if datakursu1='20130213' then edit1.text:='4,1781' else
if datakursu1='20130214' then edit1.text:='4,1715' else
if datakursu1='20130215' then edit1.text:='4,1852' else
if datakursu1='20130218' then edit1.text:='4,193' else
if datakursu1='20130219' then edit1.text:='4,1863' else
if datakursu1='20130220' then edit1.text:='4,1602' else
if datakursu1='20130221' then edit1.text:='4,176' else
if datakursu1='20130222' then edit1.text:='4,1574' else
if datakursu1='20130225' then edit1.text:='4,158' else
if datakursu1='20130226' then edit1.text:='4,1613' else
if datakursu1='20130227' then edit1.text:='4,1658' else
if datakursu1='20130228' then edit1.text:='4,157' else
if datakursu1='20130301' then edit1.text:='4,1432' else
if datakursu1='20130304' then edit1.text:='4,135' else
if datakursu1='20130305' then edit1.text:='4,1361' else
if datakursu1='20130306' then edit1.text:='4,1269' else
if datakursu1='20130307' then edit1.text:='4,1472' else
if datakursu1='20130308' then edit1.text:='4,1497' else
if datakursu1='20130311' then edit1.text:='4,139' else
if datakursu1='20130312' then edit1.text:='4,15' else
if datakursu1='20130313' then edit1.text:='4,1484' else
if datakursu1='20130314' then edit1.text:='4,1448' else
if datakursu1='20130315' then edit1.text:='4,1595' else
if datakursu1='20130318' then edit1.text:='4,1505' else
if datakursu1='20130319' then edit1.text:='4,1465' else
if datakursu1='20130320' then edit1.text:='4,1538' else
if datakursu1='20130321' then edit1.text:='4,1805' else
if datakursu1='20130322' then edit1.text:='4,186' else
if datakursu1='20130325' then edit1.text:='4,1586' else
if datakursu1='20130326' then edit1.text:='4,1723' else
if datakursu1='20130327' then edit1.text:='4,1779' else
if datakursu1='20130328' then edit1.text:='4,1866' else
if datakursu1='20130329' then edit1.text:='4,1774' else
if datakursu1='20130402' then edit1.text:='4,1813' else
if datakursu1='20130403' then edit1.text:='4,1898' else
if datakursu1='20130404' then edit1.text:='4,1898' else
if datakursu1='20130405' then edit1.text:='4,182' else
if datakursu1='20130408' then edit1.text:='4,1495' else
if datakursu1='20130409' then edit1.text:='4,1298' else
if datakursu1='20130410' then edit1.text:='4,1135' else
if datakursu1='20130411' then edit1.text:='4,1061' else
if datakursu1='20130412' then edit1.text:='4,12' else
if datakursu1='20130415' then edit1.text:='4,1125' else
if datakursu1='20130416' then edit1.text:='4,1178' else
if datakursu1='20130417' then edit1.text:='4,1097' else
if datakursu1='20130418' then edit1.text:='4,115' else
if datakursu1='20130419' then edit1.text:='4,1118' else
if datakursu1='20130422' then edit1.text:='4,1025' else
if datakursu1='20130423' then edit1.text:='4,1293' else
if datakursu1='20130424' then edit1.text:='4,1403' else
if datakursu1='20130425' then edit1.text:='4,1518' else
if datakursu1='20130426' then edit1.text:='4,1588' else
if datakursu1='20130429' then edit1.text:='4,1501' else
if datakursu1='20130430' then edit1.text:='4,1429' else
if datakursu1='20130502' then edit1.text:='4,1485' else
if datakursu1='20130506' then edit1.text:='4,1479' else
if datakursu1='20130507' then edit1.text:='4,155' else
if datakursu1='20130508' then edit1.text:='4,1487' else
if datakursu1='20130509' then edit1.text:='4,1285' else
if datakursu1='20130510' then edit1.text:='4,1417' else
if datakursu1='20130513' then edit1.text:='4,157' else
if datakursu1='20130514' then edit1.text:='4,1606' else
if datakursu1='20130515' then edit1.text:='4,1725' else
if datakursu1='20130516' then edit1.text:='4,1822' else
if datakursu1='20130517' then edit1.text:='4,1834' else
if datakursu1='20130520' then edit1.text:='4,1683' else
if datakursu1='20130521' then edit1.text:='4,182' else
if datakursu1='20130522' then edit1.text:='4,1813' else
if datakursu1='20130523' then edit1.text:='4,202' else
if datakursu1='20130524' then edit1.text:='4,2049' else
if datakursu1='20130527' then edit1.text:='4,195' else
if datakursu1='20130528' then edit1.text:='4,1912' else
if datakursu1='20130529' then edit1.text:='4,2315' else
if datakursu1='20130531' then edit1.text:='4,2902' else
if datakursu1='20130603' then edit1.text:='4,2786' else
if datakursu1='20130604' then edit1.text:='4,252' else
if datakursu1='20130605' then edit1.text:='4,2349' else
if datakursu1='20130606' then edit1.text:='4,2742' else
if datakursu1='20130607' then edit1.text:='4,3061' else
if datakursu1='20130610' then edit1.text:='4,2571' else
if datakursu1='20130611' then edit1.text:='4,2756' else
if datakursu1='20130612' then edit1.text:='4,2555' else
if datakursu1='20130613' then edit1.text:='4,2685' else
if datakursu1='20130614' then edit1.text:='4,218' else
if datakursu1='20130617' then edit1.text:='4,2316' else
if datakursu1='20130618' then edit1.text:='4,2406' else
if datakursu1='20130619' then edit1.text:='4,2563' else
if datakursu1='20130620' then edit1.text:='4,3237' else
if datakursu1='20130621' then edit1.text:='4,3284' else
if datakursu1='20130624' then edit1.text:='4,3432' else
if datakursu1='20130625' then edit1.text:='4,3118' else
if datakursu1='20130626' then edit1.text:='4,3348' else
if datakursu1='20130627' then edit1.text:='4,3314' else
if datakursu1='20130628' then edit1.text:='4,3292' else
if datakursu1='20130701' then edit1.text:='4,3323' else
if datakursu1='20130702' then edit1.text:='4,3265' else
if datakursu1='20130703' then edit1.text:='4,3416' else
if datakursu1='20130704' then edit1.text:='4,3213' else
if datakursu1='20130705' then edit1.text:='4,2824' else
if datakursu1='20130708' then edit1.text:='4,3105' else
if datakursu1='20130709' then edit1.text:='4,3234' else
if datakursu1='20130710' then edit1.text:='4,324' else
if datakursu1='20130711' then edit1.text:='4,3345' else
if datakursu1='20130712' then edit1.text:='4,3295' else
if datakursu1='20130715' then edit1.text:='4,2922' else
if datakursu1='20130716' then edit1.text:='4,2788' else
if datakursu1='20130717' then edit1.text:='4,2624' else
if datakursu1='20130718' then edit1.text:='4,2453' else
if datakursu1='20130719' then edit1.text:='4,2457' else
if datakursu1='20130722' then edit1.text:='4,2296' else
if datakursu1='20130723' then edit1.text:='4,2186' else
if datakursu1='20130724' then edit1.text:='4,209' else
if datakursu1='20130725' then edit1.text:='4,2387' else
if datakursu1='20130726' then edit1.text:='4,2295' else
if datakursu1='20130729' then edit1.text:='4,2319' else
if datakursu1='20130730' then edit1.text:='4,2202' else
if datakursu1='20130731' then edit1.text:='4,2427' else
if datakursu1='20130801' then edit1.text:='4,2339' else
if datakursu1='20130802' then edit1.text:='4,2558' else
if datakursu1='20130805' then edit1.text:='4,2211' else
if datakursu1='20130806' then edit1.text:='4,2107' else
if datakursu1='20130807' then edit1.text:='4,2153' else
if datakursu1='20130808' then edit1.text:='4,2045' else
if datakursu1='20130809' then edit1.text:='4,194' else
if datakursu1='20130812' then edit1.text:='4,1927' else
if datakursu1='20130813' then edit1.text:='4,1874' else
if datakursu1='20130814' then edit1.text:='4,1994' else
if datakursu1='20130816' then edit1.text:='4,223' else
if datakursu1='20130819' then edit1.text:='4,248' else
if datakursu1='20130820' then edit1.text:='4,2468' else
if datakursu1='20130821' then edit1.text:='4,244' else
if datakursu1='20130822' then edit1.text:='4,2477' else
if datakursu1='20130823' then edit1.text:='4,2323' else
if datakursu1='20130826' then edit1.text:='4,232' else
if datakursu1='20130827' then edit1.text:='4,2473' else
if datakursu1='20130828' then edit1.text:='4,2555' else
if datakursu1='20130829' then edit1.text:='4,2812' else
if datakursu1='20130830' then edit1.text:='4,2654' else
if datakursu1='20130902' then edit1.text:='4,2507' else
if datakursu1='20130903' then edit1.text:='4,272' else
if datakursu1='20130904' then edit1.text:='4,2673' else
if datakursu1='20130905' then edit1.text:='4,2805' else
if datakursu1='20130906' then edit1.text:='4,2975' else
if datakursu1='20130909' then edit1.text:='4,27' else
if datakursu1='20130910' then edit1.text:='4,2637' else
if datakursu1='20130911' then edit1.text:='4,2408' else
if datakursu1='20130912' then edit1.text:='4,2238' else
if datakursu1='20130913' then edit1.text:='4,211' else
if datakursu1='20130916' then edit1.text:='4,1961' else
if datakursu1='20130917' then edit1.text:='4,2144' else
if datakursu1='20130918' then edit1.text:='4,2302' else
if datakursu1='20130919' then edit1.text:='4,179' else
if datakursu1='20130920' then edit1.text:='4,2144' else
if datakursu1='20130923' then edit1.text:='4,2268' else
if datakursu1='20130924' then edit1.text:='4,2291' else
if datakursu1='20130925' then edit1.text:='4,2153' else
if datakursu1='20130926' then edit1.text:='4,2262' else
if datakursu1='20130927' then edit1.text:='4,231' else
if datakursu1='20130930' then edit1.text:='4,2163' else
if datakursu1='20131001' then edit1.text:='4,223' else
if datakursu1='20131002' then edit1.text:='4,2231' else
if datakursu1='20131003' then edit1.text:='4,2105' else
if datakursu1='20131004' then edit1.text:='4,2065' else
if datakursu1='20131007' then edit1.text:='4,2088' else
if datakursu1='20131008' then edit1.text:='4,1896' else
if datakursu1='20131009' then edit1.text:='4,201' else
if datakursu1='20131010' then edit1.text:='4,1918' else
if datakursu1='20131011' then edit1.text:='4,1861' else
if datakursu1='20131014' then edit1.text:='4,1925' else
if datakursu1='20131015' then edit1.text:='4,1855' else
if datakursu1='20131016' then edit1.text:='4,1755' else
if datakursu1='20131017' then edit1.text:='4,1738' else
if datakursu1='20131018' then edit1.text:='4,1769' else
if datakursu1='20131021' then edit1.text:='4,185' else
if datakursu1='20131022' then edit1.text:='4,1786' else
if datakursu1='20131023' then edit1.text:='4,18' else
if datakursu1='20131024' then edit1.text:='4,1812' else
if datakursu1='20131025' then edit1.text:='4,191' else
if datakursu1='20131028' then edit1.text:='4,1805' else
if datakursu1='20131029' then edit1.text:='4,1893' else
if datakursu1='20131030' then edit1.text:='4,1869' else
if datakursu1='20131031' then edit1.text:='4,1766' else
if datakursu1='20131104' then edit1.text:='4,1816' else
if datakursu1='20131105' then edit1.text:='4,1805' else
if datakursu1='20131106' then edit1.text:='4,1728' else
if datakursu1='20131107' then edit1.text:='4,1696' else
if datakursu1='20131108' then edit1.text:='4,1799' else
if datakursu1='20131112' then edit1.text:='4,2066' else
if datakursu1='20131113' then edit1.text:='4,2061' else
if datakursu1='20131114' then edit1.text:='4,189' else
if datakursu1='20131115' then edit1.text:='4,189' else
if datakursu1='20131118' then edit1.text:='4,1805' else
if datakursu1='20131119' then edit1.text:='4,1789' else
if datakursu1='20131120' then edit1.text:='4,1847' else
if datakursu1='20131121' then edit1.text:='4,1933' else
if datakursu1='20131122' then edit1.text:='4,1995' else
if datakursu1='20131125' then edit1.text:='4,193' else
if datakursu1='20131126' then edit1.text:='4,1935' else
if datakursu1='20131127' then edit1.text:='4,2038' else
if datakursu1='20131128' then edit1.text:='4,1988' else
if datakursu1='20131129' then edit1.text:='4,1998' else
if datakursu1='20131202' then edit1.text:='4,1965' else
if datakursu1='20131203' then edit1.text:='4,2032' else
if datakursu1='20131204' then edit1.text:='4,2011' else
if datakursu1='20131205' then edit1.text:='4,1974' else
if datakursu1='20131206' then edit1.text:='4,1925' else
if datakursu1='20131209' then edit1.text:='4,1883' else
if datakursu1='20131210' then edit1.text:='4,1822' else
if datakursu1='20131211' then edit1.text:='4,1803' else
if datakursu1='20131212' then edit1.text:='4,1878' else
if datakursu1='20131213' then edit1.text:='4,1844' else
if datakursu1='20131216' then edit1.text:='4,1784' else
if datakursu1='20131217' then edit1.text:='4,1788' else
if datakursu1='20131218' then edit1.text:='4,18' else
if datakursu1='20131219' then edit1.text:='4,17' else
if datakursu1='20131220' then edit1.text:='4,1652' else
if datakursu1='20131223' then edit1.text:='4,1638' else
if datakursu1='20131224' then edit1.text:='4,1512' else
if datakursu1='20131227' then edit1.text:='4,1538' else
if datakursu1='20131230' then edit1.text:='4,1513' else
if datakursu1='20131231' then edit1.text:='4,1472' else

//rok 2012

if datakursu1='20120102' then edit1.text:='4,464' else
if datakursu1='20120103' then edit1.text:='4,4597' else
if datakursu1='20120104' then edit1.text:='4,4753' else
if datakursu1='20120105' then edit1.text:='4,5135' else
if datakursu1='20120109' then edit1.text:='4,4902' else
if datakursu1='20120110' then edit1.text:='4,4883' else
if datakursu1='20120111' then edit1.text:='4,4645' else
if datakursu1='20120112' then edit1.text:='4,4532' else
if datakursu1='20120113' then edit1.text:='4,404' else
if datakursu1='20120116' then edit1.text:='4,4056' else
if datakursu1='20120117' then edit1.text:='4,3708' else
if datakursu1='20120118' then edit1.text:='4,3491' else
if datakursu1='20120119' then edit1.text:='4,3391' else
if datakursu1='20120120' then edit1.text:='4,326' else
if datakursu1='20120123' then edit1.text:='4,3111' else
if datakursu1='20120124' then edit1.text:='4,2885' else
if datakursu1='20120125' then edit1.text:='4,2855' else
if datakursu1='20120126' then edit1.text:='4,2431' else
if datakursu1='20120127' then edit1.text:='4,2223' else
if datakursu1='20120130' then edit1.text:='4,2589' else
if datakursu1='20120131' then edit1.text:='4,227' else
if datakursu1='20120201' then edit1.text:='4,1933' else
if datakursu1='20120202' then edit1.text:='4,1995' else
if datakursu1='20120203' then edit1.text:='4,1932' else
if datakursu1='20120206' then edit1.text:='4,1837' else
if datakursu1='20120207' then edit1.text:='4,1818' else
if datakursu1='20120208' then edit1.text:='4,171' else
if datakursu1='20120209' then edit1.text:='4,1769' else
if datakursu1='20120210' then edit1.text:='4,2048' else
if datakursu1='20120213' then edit1.text:='4,1948' else
if datakursu1='20120214' then edit1.text:='4,1935' else
if datakursu1='20120215' then edit1.text:='4,1695' else
if datakursu1='20120216' then edit1.text:='4,2276' else
if datakursu1='20120217' then edit1.text:='4,184' else
if datakursu1='20120220' then edit1.text:='4,1775' else
if datakursu1='20120221' then edit1.text:='4,1735' else
if datakursu1='20120222' then edit1.text:='4,1857' else
if datakursu1='20120223' then edit1.text:='4,181' else
if datakursu1='20120224' then edit1.text:='4,1654' else
if datakursu1='20120227' then edit1.text:='4,1845' else
if datakursu1='20120228' then edit1.text:='4,163' else
if datakursu1='20120229' then edit1.text:='4,1365' else
if datakursu1='20120301' then edit1.text:='4,1198' else
if datakursu1='20120302' then edit1.text:='4,1125' else
if datakursu1='20120305' then edit1.text:='4,1345' else
if datakursu1='20120306' then edit1.text:='4,157' else
if datakursu1='20120307' then edit1.text:='4,1578' else
if datakursu1='20120308' then edit1.text:='4,1255' else
if datakursu1='20120309' then edit1.text:='4,1143' else
if datakursu1='20120312' then edit1.text:='4,1062' else
if datakursu1='20120313' then edit1.text:='4,1132' else
if datakursu1='20120314' then edit1.text:='4,1395' else
if datakursu1='20120315' then edit1.text:='4,142' else
if datakursu1='20120316' then edit1.text:='4,1367' else
if datakursu1='20120319' then edit1.text:='4,127' else
if datakursu1='20120320' then edit1.text:='4,1282' else
if datakursu1='20120321' then edit1.text:='4,1364' else
if datakursu1='20120322' then edit1.text:='4,1694' else
if datakursu1='20120323' then edit1.text:='4,1649' else
if datakursu1='20120326' then edit1.text:='4,1409' else
if datakursu1='20120327' then edit1.text:='4,13' else
if datakursu1='20120328' then edit1.text:='4,1503' else
if datakursu1='20120329' then edit1.text:='4,16' else
if datakursu1='20120330' then edit1.text:='4,1616' else
if datakursu1='20120402' then edit1.text:='4,1428' else
if datakursu1='20120403' then edit1.text:='4,1327' else
if datakursu1='20120404' then edit1.text:='4,1495' else
if datakursu1='20120405' then edit1.text:='4,1544' else
if datakursu1='20120406' then edit1.text:='4,1565' else
if datakursu1='20120410' then edit1.text:='4,1756' else
if datakursu1='20120411' then edit1.text:='4,2008' else
if datakursu1='20120412' then edit1.text:='4,174' else
if datakursu1='20120413' then edit1.text:='4,1779' else
if datakursu1='20120416' then edit1.text:='4,2028' else
if datakursu1='20120417' then edit1.text:='4,19' else
if datakursu1='20120418' then edit1.text:='4,176' else
if datakursu1='20120419' then edit1.text:='4,1865' else
if datakursu1='20120420' then edit1.text:='4,1885' else
if datakursu1='20120423' then edit1.text:='4,2033' else
if datakursu1='20120424' then edit1.text:='4,2059' else
if datakursu1='20120425' then edit1.text:='4,187' else
if datakursu1='20120426' then edit1.text:='4,1825' else
if datakursu1='20120427' then edit1.text:='4,182' else
if datakursu1='20120430' then edit1.text:='4,1721' else
if datakursu1='20120502' then edit1.text:='4,16' else
if datakursu1='20120504' then edit1.text:='4,188' else
if datakursu1='20120507' then edit1.text:='4,1991' else
if datakursu1='20120508' then edit1.text:='4,1949' else
if datakursu1='20120509' then edit1.text:='4,2047' else
if datakursu1='20120510' then edit1.text:='4,2379' else
if datakursu1='20120511' then edit1.text:='4,2413' else
if datakursu1='20120514' then edit1.text:='4,3' else
if datakursu1='20120515' then edit1.text:='4,316' else
if datakursu1='20120516' then edit1.text:='4,3682' else
if datakursu1='20120517' then edit1.text:='4,349' else
if datakursu1='20120518' then edit1.text:='4,3683' else
if datakursu1='20120521' then edit1.text:='4,3322' else
if datakursu1='20120522' then edit1.text:='4,3205' else
if datakursu1='20120523' then edit1.text:='4,3576' else
if datakursu1='20120524' then edit1.text:='4,3665' else
if datakursu1='20120525' then edit1.text:='4,351' else
if datakursu1='20120528' then edit1.text:='4,3442' else
if datakursu1='20120529' then edit1.text:='4,3511' else
if datakursu1='20120530' then edit1.text:='4,3731' else
if datakursu1='20120531' then edit1.text:='4,3889' else
if datakursu1='20120601' then edit1.text:='4,4126' else
if datakursu1='20120604' then edit1.text:='4,4007' else
if datakursu1='20120605' then edit1.text:='4,3922' else
if datakursu1='20120606' then edit1.text:='4,3423' else
if datakursu1='20120608' then edit1.text:='4,3078' else
if datakursu1='20120611' then edit1.text:='4,2922' else
if datakursu1='20120612' then edit1.text:='4,3222' else
if datakursu1='20120613' then edit1.text:='4,331' else
if datakursu1='20120614' then edit1.text:='4,3207' else
if datakursu1='20120615' then edit1.text:='4,2925' else
if datakursu1='20120618' then edit1.text:='4,268' else
if datakursu1='20120619' then edit1.text:='4,2733' else
if datakursu1='20120620' then edit1.text:='4,2503' else
if datakursu1='20120621' then edit1.text:='4,2585' else
if datakursu1='20120622' then edit1.text:='4,271' else
if datakursu1='20120625' then edit1.text:='4,2645' else
if datakursu1='20120626' then edit1.text:='4,258' else
if datakursu1='20120627' then edit1.text:='4,25' else
if datakursu1='20120628' then edit1.text:='4,276' else
if datakursu1='20120629' then edit1.text:='4,2613' else
if datakursu1='20120702' then edit1.text:='4,2308' else
if datakursu1='20120703' then edit1.text:='4,211' else
if datakursu1='20120704' then edit1.text:='4,2046' else
if datakursu1='20120705' then edit1.text:='4,2221' else
if datakursu1='20120706' then edit1.text:='4,2178' else
if datakursu1='20120709' then edit1.text:='4,2401' else
if datakursu1='20120710' then edit1.text:='4,2041' else
if datakursu1='20120711' then edit1.text:='4,1801' else
if datakursu1='20120712' then edit1.text:='4,2008' else
if datakursu1='20120713' then edit1.text:='4,2055' else
if datakursu1='20120716' then edit1.text:='4,1939' else
if datakursu1='20120717' then edit1.text:='4,1782' else
if datakursu1='20120718' then edit1.text:='4,1705' else
if datakursu1='20120719' then edit1.text:='4,1596' else
if datakursu1='20120720' then edit1.text:='4,1629' else
if datakursu1='20120723' then edit1.text:='4,18' else
if datakursu1='20120724' then edit1.text:='4,2011' else
if datakursu1='20120725' then edit1.text:='4,2087' else
if datakursu1='20120726' then edit1.text:='4,1853' else
if datakursu1='20120727' then edit1.text:='4,1459' else
if datakursu1='20120730' then edit1.text:='4,1411' else
if datakursu1='20120731' then edit1.text:='4,1086' else
if datakursu1='20120801' then edit1.text:='4,1147' else
if datakursu1='20120802' then edit1.text:='4,1063' else
if datakursu1='20120803' then edit1.text:='4,0967' else
if datakursu1='20120806' then edit1.text:='4,0486' else
if datakursu1='20120807' then edit1.text:='4,0465' else
if datakursu1='20120808' then edit1.text:='4,0918' else
if datakursu1='20120809' then edit1.text:='4,0615' else
if datakursu1='20120810' then edit1.text:='4,0771' else
if datakursu1='20120813' then edit1.text:='4,0823' else
if datakursu1='20120814' then edit1.text:='4,0888' else
if datakursu1='20120816' then edit1.text:='4,082' else
if datakursu1='20120817' then edit1.text:='4,068' else
if datakursu1='20120820' then edit1.text:='4,0684' else
if datakursu1='20120821' then edit1.text:='4,0683' else
if datakursu1='20120822' then edit1.text:='4,0729' else
if datakursu1='20120823' then edit1.text:='4,0756' else
if datakursu1='20120824' then edit1.text:='4,1012' else
if datakursu1='20120827' then edit1.text:='4,0783' else
if datakursu1='20120828' then edit1.text:='4,095' else
if datakursu1='20120829' then edit1.text:='4,154' else
if datakursu1='20120830' then edit1.text:='4,1919' else
if datakursu1='20120831' then edit1.text:='4,1838' else
if datakursu1='20120903' then edit1.text:='4,1981' else
if datakursu1='20120904' then edit1.text:='4,1944' else
if datakursu1='20120905' then edit1.text:='4,2157' else
if datakursu1='20120906' then edit1.text:='4,158' else
if datakursu1='20120907' then edit1.text:='4,1275' else
if datakursu1='20120910' then edit1.text:='4,1141' else
if datakursu1='20120911' then edit1.text:='4,1085' else
if datakursu1='20120912' then edit1.text:='4,0801' else
if datakursu1='20120913' then edit1.text:='4,1146' else
if datakursu1='20120914' then edit1.text:='4,0584' else
if datakursu1='20120917' then edit1.text:='4,0887' else
if datakursu1='20120918' then edit1.text:='4,1217' else
if datakursu1='20120919' then edit1.text:='4,1217' else
if datakursu1='20120920' then edit1.text:='4,1635' else
if datakursu1='20120921' then edit1.text:='4,134' else
if datakursu1='20120924' then edit1.text:='4,1528' else
if datakursu1='20120925' then edit1.text:='4,1475' else
if datakursu1='20120926' then edit1.text:='4,1415' else
if datakursu1='20120927' then edit1.text:='4,1518' else
if datakursu1='20120928' then edit1.text:='4,1138' else
if datakursu1='20121001' then edit1.text:='4,102' else
if datakursu1='20121002' then edit1.text:='4,1115' else
if datakursu1='20121003' then edit1.text:='4,1202' else
if datakursu1='20121004' then edit1.text:='4,0933' else
if datakursu1='20121005' then edit1.text:='4,0766' else
if datakursu1='20121008' then edit1.text:='4,077' else
if datakursu1='20121009' then edit1.text:='4,0721' else
if datakursu1='20121010' then edit1.text:='4,0788' else
if datakursu1='20121011' then edit1.text:='4,0987' else
if datakursu1='20121012' then edit1.text:='4,0957' else
if datakursu1='20121015' then edit1.text:='4,092' else
if datakursu1='20121016' then edit1.text:='4,0889' else
if datakursu1='20121017' then edit1.text:='4,094' else
if datakursu1='20121018' then edit1.text:='4,1034' else
if datakursu1='20121019' then edit1.text:='4,1103' else
if datakursu1='20121022' then edit1.text:='4,1056' else
if datakursu1='20121023' then edit1.text:='4,1266' else
if datakursu1='20121024' then edit1.text:='4,1374' else
if datakursu1='20121025' then edit1.text:='4,143' else
if datakursu1='20121026' then edit1.text:='4,1543' else
if datakursu1='20121029' then edit1.text:='4,1472' else
if datakursu1='20121030' then edit1.text:='4,145' else
if datakursu1='20121031' then edit1.text:='4,135' else
if datakursu1='20121102' then edit1.text:='4,1169' else
if datakursu1='20121105' then edit1.text:='4,1213' else
if datakursu1='20121106' then edit1.text:='4,1211' else
if datakursu1='20121107' then edit1.text:='4,1122' else
if datakursu1='20121108' then edit1.text:='4,1593' else
if datakursu1='20121109' then edit1.text:='4,1527' else
if datakursu1='20121112' then edit1.text:='4,1661' else
if datakursu1='20121113' then edit1.text:='4,1782' else
if datakursu1='20121114' then edit1.text:='4,1754' else
if datakursu1='20121115' then edit1.text:='4,1712' else
if datakursu1='20121116' then edit1.text:='4,1614' else
if datakursu1='20121119' then edit1.text:='4,1521' else
if datakursu1='20121120' then edit1.text:='4,137' else
if datakursu1='20121121' then edit1.text:='4,1266' else
if datakursu1='20121122' then edit1.text:='4,1142' else
if datakursu1='20121123' then edit1.text:='4,1229' else
if datakursu1='20121126' then edit1.text:='4,116' else
if datakursu1='20121127' then edit1.text:='4,1008' else
if datakursu1='20121128' then edit1.text:='4,1099' else
if datakursu1='20121129' then edit1.text:='4,0968' else
if datakursu1='20121130' then edit1.text:='4,1064' else
if datakursu1='20121203' then edit1.text:='4,1083' else
if datakursu1='20121204' then edit1.text:='4,1273' else
if datakursu1='20121205' then edit1.text:='4,1251' else
if datakursu1='20121206' then edit1.text:='4,1247' else
if datakursu1='20121207' then edit1.text:='4,1332' else
if datakursu1='20121210' then edit1.text:='4,125' else
if datakursu1='20121211' then edit1.text:='4,1025' else
if datakursu1='20121212' then edit1.text:='4,0937' else
if datakursu1='20121213' then edit1.text:='4,0927' else
if datakursu1='20121214' then edit1.text:='4,0912' else
if datakursu1='20121217' then edit1.text:='4,0839' else
if datakursu1='20121218' then edit1.text:='4,09' else
if datakursu1='20121219' then edit1.text:='4,073' else
if datakursu1='20121220' then edit1.text:='4,0715' else
if datakursu1='20121221' then edit1.text:='4,0643' else
if datakursu1='20121224' then edit1.text:='4,0696' else
if datakursu1='20121227' then edit1.text:='4,0899' else
if datakursu1='20121228' then edit1.text:='4,0745' else
if datakursu1='20121231' then edit1.text:='4,0882' else

     begin
        edit1.text:='0';
       showmessage('Brak kursu z podanego dnia');
     end;



 end;

  procedure TForm1.dateclick2(Sender: TObject);
  begin

 if kraj.text='Niemcy'then edit9.text:='49' else
 if kraj.text='Belgia'   then edit9.text:='48' else
 if kraj.text='Holandia' then edit9.text:='50' else
 if kraj.text='Francja' then edit9.text:='50' else
 if kraj.text='inne państwo' then
   begin
 edit9.text:='0';
 showmessage ('Wpisz kwotę diety ręcznie');
  end;


end;

  procedure TForm1.dataodclick1(Sender: TObject);
  begin
   d1:=dataod.date;
   d2:=datado.date;
   d3:=EncodeDate(2013, 03, 01);



      edit2.text:=IntToStr(DaysBetween(d2, d1)+1);

  if d2<d3 then
        begin
          if kraj.text='Niemcy'   then edit9.text:='42' else
          if kraj.text='Belgia'   then edit9.text:='45' else
          if kraj.text='Holandia' then edit9.text:='42' else
          if kraj.text='Francja'  then edit9.text:='45'
        end;

      {
      2015
belgia 48
niemcy 49
holandia 50
francja 50

2014
belgia 48
niemcy 49
holandia 50
francja 50

2013
Belgia 48
niemcy 49
holandia 50
francja 50

od 1 stycznia 2006 do 28.02.2013
Belgia 45
niemcy 42
holandia 42
francja 45
}

  end;








 procedure TForm1.Button2Click(Sender: TObject);
begin

  //
  styczen:=strtofloat(edit11.text);
  luty:=strtofloat(edit12.text);
  marzec:=strtofloat(edit10.text);
  kwiecien:=strtofloat(edit13.text);
  maj:=strtofloat(edit14.text);
  czerwiec:=strtofloat(edit15.text);
  lipiec:=strtofloat(edit16.text);
  sierpien:=strtofloat(edit17.text);
  wrzesien:=strtofloat(edit18.text);
  pazdziernik:=strtofloat(edit19.text);
  listopad:=strtofloat(edit20.text);
  grudzien:=strtofloat(edit21.text);
  suma:= styczen + luty+marzec+kwiecien+maj+czerwiec+lipiec+sierpien+wrzesien+pazdziernik+listopad+grudzien;
   edit22.text:=FormatFloat('0.00',suma);
end;

end.

