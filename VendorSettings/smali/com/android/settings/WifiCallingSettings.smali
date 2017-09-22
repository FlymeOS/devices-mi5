.class public Lcom/android/settings/WifiCallingSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiCallingSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/I;


# instance fields
.field private Cl:Landroid/preference/ListPreference;

.field private Cm:Landroid/widget/TextView;

.field private Cn:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private me:Lcom/android/settings/widget/SwitchBar;

.field private sZ:Landroid/widget/Switch;

.field private final xC:Landroid/telephony/PhoneStateListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/WifiCallingSettings;->Cn:Z

    .line 62
    new-instance v0, Lcom/android/settings/iG;

    invoke-direct {v0, p0}, Lcom/android/settings/iG;-><init>(Lcom/android/settings/WifiCallingSettings;)V

    iput-object v0, p0, Lcom/android/settings/WifiCallingSettings;->xC:Landroid/telephony/PhoneStateListener;

    .line 132
    new-instance v0, Lcom/android/settings/iH;

    invoke-direct {v0, p0}, Lcom/android/settings/iH;-><init>(Lcom/android/settings/WifiCallingSettings;)V

    iput-object v0, p0, Lcom/android/settings/WifiCallingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/WifiCallingSettings;)Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/WifiCallingSettings;->sZ:Landroid/widget/Switch;

    return-object v0
.end method

.method private a(Landroid/content/Context;ZI)V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/settings/WifiCallingSettings;->Cl:Landroid/preference/ListPreference;

    invoke-static {p1, p3}, Lcom/android/settings/WifiCallingSettings;->i(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 246
    iget-object v0, p0, Lcom/android/settings/WifiCallingSettings;->Cl:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 249
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/WifiCallingSettings;->ix()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/android/settings/WifiCallingSettings;->Cl:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/android/settings/WifiCallingSettings;->Cl:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/WifiCallingSettings;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/WifiCallingSettings;->s(Landroid/content/Intent;)V

    return-void
.end method

.method static i(Landroid/content/Context;I)I
    .locals 4

    .prologue
    .line 273
    const v0, 0x10400d7

    .line 274
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    packed-switch p1, :pswitch_data_0

    .line 286
    const-string v1, "WifiCallingSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected WFC mode value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    :goto_0
    return v0

    .line 277
    :pswitch_0
    const v0, 0x10400da

    .line 278
    goto :goto_0

    .line 280
    :pswitch_1
    const v0, 0x10400d9

    .line 281
    goto :goto_0

    .line 283
    :pswitch_2
    const v0, 0x10400d8

    .line 284
    goto :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private ix()Z
    .locals 2

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private s(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 118
    const-string v1, "alertTitle"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 119
    const-string v2, "alertMessage"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 121
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 126
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 128
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/Switch;Z)V
    .locals 3

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 233
    invoke-static {v0, p2}, Lcom/android/ims/ImsManager;->setWfcSetting(Landroid/content/Context;Z)V

    .line 235
    invoke-static {v0}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v1

    .line 236
    invoke-direct {p0, v0, p2, v1}, Lcom/android/settings/WifiCallingSettings;->a(Landroid/content/Context;ZI)V

    .line 237
    if-eqz p2, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->z()I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->z()I

    move-result v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-class v0, Lcom/android/settings/WifiCallingSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/hn;

    .line 100
    invoke-virtual {v0}, Lcom/android/settings/hn;->hD()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/WifiCallingSettings;->me:Lcom/android/settings/widget/SwitchBar;

    .line 101
    iget-object v0, p0, Lcom/android/settings/WifiCallingSettings;->me:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->wO()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/WifiCallingSettings;->sZ:Landroid/widget/Switch;

    .line 102
    iget-object v0, p0, Lcom/android/settings/WifiCallingSettings;->me:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/WifiCallingSettings;->Cm:Landroid/widget/TextView;

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/WifiCallingSettings;->Cm:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/WifiCallingSettings;->Cm:Landroid/widget/TextView;

    const v1, 0x7f0c0390

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 107
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 162
    const v0, 0x7f0800bf

    invoke-virtual {p0, v0}, Lcom/android/settings/WifiCallingSettings;->addPreferencesFromResource(I)V

    .line 164
    const-string v0, "wifi_calling_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/WifiCallingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/WifiCallingSettings;->Cl:Landroid/preference/ListPreference;

    .line 165
    iget-object v0, p0, Lcom/android/settings/WifiCallingSettings;->Cl:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/WifiCallingSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 168
    iget-object v0, p0, Lcom/android/settings/WifiCallingSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.ims.REGISTRATION_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 112
    iget-object v0, p0, Lcom/android/settings/WifiCallingSettings;->me:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 113
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 210
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 214
    iget-boolean v0, p0, Lcom/android/settings/WifiCallingSettings;->Cn:Z

    if-eqz v0, :cond_0

    .line 215
    iput-boolean v3, p0, Lcom/android/settings/WifiCallingSettings;->Cn:Z

    .line 217
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/WifiCallingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 218
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->xC:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 220
    iget-object v0, p0, Lcom/android/settings/WifiCallingSettings;->me:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->b(Lcom/android/settings/widget/I;)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/settings/WifiCallingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 224
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 259
    iget-object v0, p0, Lcom/android/settings/WifiCallingSettings;->Cl:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 260
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->Cl:Landroid/preference/ListPreference;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 261
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 262
    invoke-static {v1}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v2

    .line 263
    if-eq v0, v2, :cond_0

    .line 264
    invoke-static {v1, v0}, Lcom/android/ims/ImsManager;->setWfcMode(Landroid/content/Context;I)V

    .line 265
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->Cl:Landroid/preference/ListPreference;

    invoke-static {v1, v0}, Lcom/android/settings/WifiCallingSettings;->i(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->z()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 269
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 173
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 177
    invoke-static {v3}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/WifiCallingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 179
    iget-object v4, p0, Lcom/android/settings/WifiCallingSettings;->xC:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v0, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/WifiCallingSettings;->me:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->a(Lcom/android/settings/widget/I;)V

    .line 183
    iput-boolean v1, p0, Lcom/android/settings/WifiCallingSettings;->Cn:Z

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/WifiCallingSettings;->ix()Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "wfc_ims_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 193
    :cond_1
    invoke-static {v3}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v3}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 195
    :goto_0
    iget-object v1, p0, Lcom/android/settings/WifiCallingSettings;->sZ:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 196
    invoke-static {v3}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v1

    .line 197
    iget-object v4, p0, Lcom/android/settings/WifiCallingSettings;->Cl:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 198
    invoke-direct {p0, v3, v0, v1}, Lcom/android/settings/WifiCallingSettings;->a(Landroid/content/Context;ZI)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/WifiCallingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/WifiCallingSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 203
    const-string v1, "alertShow"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    invoke-direct {p0, v0}, Lcom/android/settings/WifiCallingSettings;->s(Landroid/content/Intent;)V

    .line 206
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 193
    goto :goto_0
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 155
    const/16 v0, 0x69

    return v0
.end method
