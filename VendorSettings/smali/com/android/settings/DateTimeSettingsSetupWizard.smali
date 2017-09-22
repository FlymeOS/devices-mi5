.class public Lcom/android/settings/DateTimeSettingsSetupWizard;
.super Landroid/app/Activity;
.source "DateTimeSettingsSetupWizard.java"

# interfaces
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private iP:Z

.field private iQ:Landroid/widget/CompoundButton;

.field private iR:Landroid/widget/Button;

.field private iS:Landroid/widget/ListPopupWindow;

.field private iT:Landroid/widget/SimpleAdapter;

.field private iU:Ljava/util/TimeZone;

.field private iV:Landroid/widget/TimePicker;

.field private iW:Landroid/widget/DatePicker;

.field private iX:Landroid/view/inputmethod/InputMethodManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/android/settings/DateTimeSettingsSetupWizard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 321
    new-instance v0, Lcom/android/settings/bT;

    invoke-direct {v0, p0}, Lcom/android/settings/bT;-><init>(Lcom/android/settings/DateTimeSettingsSetupWizard;)V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/DateTimeSettingsSetupWizard;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->bH()V

    return-void
.end method

.method private bG()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 293
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    .line 295
    :goto_0
    return v0

    .line 293
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private bH()V
    .locals 5

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iP:Z

    if-nez v0, :cond_0

    .line 319
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iR:Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iW:Landroid/widget/DatePicker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 317
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iV:Landroid/widget/TimePicker;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 318
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iV:Landroid/widget/TimePicker;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private x(I)V
    .locals 3

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 278
    if-nez v0, :cond_0

    .line 279
    sget-object v0, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find zone picker anchor view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :goto_0
    return-void

    .line 282
    :cond_0
    new-instance v1, Landroid/widget/ListPopupWindow;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iS:Landroid/widget/ListPopupWindow;

    .line 283
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iS:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 284
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iS:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 285
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iS:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iT:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 286
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iS:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 287
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iS:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 288
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iS:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method


# virtual methods
.method public bF()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 114
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 115
    iput-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iU:Ljava/util/TimeZone;

    .line 116
    const v0, 0x7f1300b8

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iR:Landroid/widget/Button;

    .line 117
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iR:Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iR:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 122
    const-string v1, "extra_initial_auto_datetime_value"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    const-string v1, "extra_initial_auto_datetime_value"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    move v1, v0

    .line 128
    :goto_0
    const v0, 0x7f1300ba

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iQ:Landroid/widget/CompoundButton;

    .line 129
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iQ:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iQ:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 132
    const v0, 0x7f1300bf

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TimePicker;

    iput-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iV:Landroid/widget/TimePicker;

    .line 133
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iV:Landroid/widget/TimePicker;

    if-nez v1, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 134
    const v0, 0x7f1300bc

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/DatePicker;

    iput-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iW:Landroid/widget/DatePicker;

    .line 135
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iW:Landroid/widget/DatePicker;

    if-nez v1, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/DatePicker;->setEnabled(Z)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iW:Landroid/widget/DatePicker;

    invoke-virtual {v0, v3}, Landroid/widget/DatePicker;->setCalendarViewShown(Z)V

    .line 140
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iX:Landroid/view/inputmethod/InputMethodManager;

    .line 142
    const v0, 0x7f130076

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const v0, 0x7f130075

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 144
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    :cond_0
    return-void

    .line 125
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->bG()Z

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v3

    .line 133
    goto :goto_1

    :cond_3
    move v2, v3

    .line 135
    goto :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 203
    .line 217
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iQ:Landroid/widget/CompoundButton;

    if-ne p1, v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_time"

    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 221
    iget-object v3, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iV:Landroid/widget/TimePicker;

    if-nez p2, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iW:Landroid/widget/DatePicker;

    if-nez p2, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->setEnabled(Z)V

    .line 224
    :cond_0
    if-eqz p2, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_1

    .line 227
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iX:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 228
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 231
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 218
    goto :goto_0

    :cond_3
    move v0, v2

    .line 221
    goto :goto_1

    :cond_4
    move v1, v2

    .line 222
    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 199
    :goto_0
    return-void

    .line 169
    :sswitch_0
    const v0, 0x7f1300b8

    invoke-direct {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->x(I)V

    goto :goto_0

    .line 173
    :sswitch_1
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iU:Ljava/util/TimeZone;

    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iU:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    sget-object v0, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    const-string v1, "Another TimeZone is selected by a user. Changing system TimeZone."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 179
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iU:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iQ:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iQ:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 185
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iQ:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iW:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iW:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getMonth()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iW:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/DateTimeSettings;->a(Landroid/content/Context;III)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iV:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iV:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/settings/DateTimeSettings;->a(Landroid/content/Context;II)V

    .line 194
    :cond_1
    :sswitch_2
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->setResult(I)V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->finish()V

    goto/16 :goto_0

    .line 183
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 167
    :sswitch_data_0
    .sparse-switch
        0x7f130075 -> :sswitch_2
        0x7f130076 -> :sswitch_1
        0x7f1300b8 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->requestWindowFeature(I)Z

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v2, 0x7f04005e

    invoke-virtual {p0, v2}, Lcom/android/settings/DateTimeSettingsSetupWizard;->setContentView(I)V

    .line 83
    const v2, 0x7f1300b8

    invoke-virtual {p0, v2}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iP:Z

    .line 84
    iget-boolean v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iP:Z

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->bF()V

    .line 89
    :goto_1
    const v0, 0x7f04005f

    invoke-static {p0, v1, v0}, Lcom/android/settings/ZonePicker;->b(Landroid/content/Context;ZI)Landroid/widget/SimpleAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iT:Landroid/widget/SimpleAdapter;

    .line 97
    iget-boolean v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iP:Z

    if-nez v0, :cond_0

    .line 98
    const v0, 0x7f1300b4

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 99
    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 101
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 83
    goto :goto_0

    .line 87
    :cond_2
    const v0, 0x7f130076

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    .prologue
    .line 235
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ZonePicker;->p(Ljava/lang/Object;)Ljava/util/TimeZone;

    move-result-object v1

    .line 236
    iget-boolean v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iP:Z

    if-eqz v0, :cond_1

    .line 237
    iput-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iU:Ljava/util/TimeZone;

    .line 238
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 239
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iR:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iR:Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iW:Landroid/widget/DatePicker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 244
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iV:Landroid/widget/TimePicker;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 245
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iV:Landroid/widget/TimePicker;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 255
    :goto_0
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->iS:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 256
    return-void

    .line 249
    :cond_1
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 250
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f1300b6

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DateTimeSettings;

    .line 253
    invoke-virtual {v0, p0}, Lcom/android/settings/DateTimeSettings;->k(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 162
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 163
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 272
    const v0, 0x7f1300b5

    invoke-direct {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->x(I)V

    .line 273
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 152
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/android/settings/DateTimeSettingsSetupWizard;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 157
    return-void
.end method
