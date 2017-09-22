.class public Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "BatterySaverSettings.java"

# interfaces
.implements Lcom/android/vendorsettings/widget/I;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private Cn:Z

.field private final aeO:Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$SettingsObserver;

.field private final aeP:Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$Receiver;

.field private aeQ:Lcom/android/vendorsettings/notification/SettingPref;

.field private aeR:Landroid/os/PowerManager;

.field private final aeS:Ljava/lang/Runnable;

.field private final aeT:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCreated:Z

.field private final mHandler:Landroid/os/Handler;

.field private me:Lcom/android/vendorsettings/widget/SwitchBar;

.field private sZ:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "BatterySaverSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$SettingsObserver;

    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$SettingsObserver;-><init>(Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->aeO:Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$SettingsObserver;

    .line 54
    new-instance v0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$Receiver;-><init>(Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$1;)V

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->aeP:Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$Receiver;

    .line 169
    new-instance v0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$2;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$2;-><init>(Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->aeS:Ljava/lang/Runnable;

    .line 176
    new-instance v0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$3;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$3;-><init>(Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->aeT:Ljava/lang/Runnable;

    .line 209
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->qS()V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;Z)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->aS(Z)V

    return-void
.end method

.method private aS(Z)V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->aeR:Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->setPowerSaveMode(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    sget-boolean v0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BatterySaverSettings"

    const-string v1, "Setting mode failed, fallback to current value"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->aeS:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    :cond_1
    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->aeS:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;)Lcom/android/vendorsettings/notification/SettingPref;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->aeQ:Lcom/android/vendorsettings/notification/SettingPref;

    return-object v0
.end method

.method static synthetic f(Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private qS()V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->aeR:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    .line 156
    sget-boolean v1, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "BatterySaverSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSwitch: isChecked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->sZ:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->sZ:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-ne v0, v1, :cond_2

    .line 167
    :cond_1
    :goto_0
    return-void

    .line 160
    :cond_2
    iget-boolean v1, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->Cn:Z

    if-eqz v1, :cond_3

    .line 161
    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->me:Lcom/android/vendorsettings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/vendorsettings/widget/SwitchBar;->b(Lcom/android/vendorsettings/widget/I;)V

    .line 163
    :cond_3
    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->sZ:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 164
    iget-boolean v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->Cn:Z

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->me:Lcom/android/vendorsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/vendorsettings/widget/SwitchBar;->a(Lcom/android/vendorsettings/widget/I;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/widget/Switch;Z)V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->aeT:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 139
    if-eqz p2, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->aeT:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_0
    sget-boolean v0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "BatterySaverSettings"

    const-string v1, "Stopping low power mode from settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->aS(Z)V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 76
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 77
    iget-boolean v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->mCreated:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->me:Lcom/android/vendorsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/vendorsettings/widget/SwitchBar;->show()V

    .line 105
    :goto_0
    return-void

    .line 81
    :cond_0
    iput-boolean v2, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->mCreated:Z

    .line 82
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->addPreferencesFromResource(I)V

    .line 84
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;

    .line 85
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/vendorsettings/hn;

    invoke-virtual {v0}, Lcom/android/vendorsettings/hn;->hD()Lcom/android/vendorsettings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->me:Lcom/android/vendorsettings/widget/SwitchBar;

    .line 86
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->me:Lcom/android/vendorsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/vendorsettings/widget/SwitchBar;->wO()Lcom/android/vendorsettings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->sZ:Landroid/widget/Switch;

    .line 87
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->me:Lcom/android/vendorsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/vendorsettings/widget/SwitchBar;->show()V

    .line 89
    new-instance v0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$1;

    const-string v3, "turn_on_automatically"

    const-string v4, "low_power_trigger_level"

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0a006a

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$1;-><init>(Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->aeQ:Lcom/android/vendorsettings/notification/SettingPref;

    .line 102
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->aeQ:Lcom/android/vendorsettings/notification/SettingPref;

    invoke-virtual {v0, p0}, Lcom/android/vendorsettings/notification/SettingPref;->c(Lcom/android/vendorsettings/SettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 104
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->aeR:Landroid/os/PowerManager;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 110
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->me:Lcom/android/vendorsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/vendorsettings/widget/SwitchBar;->hide()V

    .line 111
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPause()V

    .line 128
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->aeO:Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$SettingsObserver;->setListening(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->aeP:Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$Receiver;->setListening(Z)V

    .line 130
    iget-boolean v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->Cn:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->me:Lcom/android/vendorsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/vendorsettings/widget/SwitchBar;->b(Lcom/android/vendorsettings/widget/I;)V

    .line 132
    iput-boolean v1, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->Cn:Z

    .line 134
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 115
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 116
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->aeO:Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$SettingsObserver;->setListening(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->aeP:Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$Receiver;->setListening(Z)V

    .line 118
    iget-boolean v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->Cn:Z

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->me:Lcom/android/vendorsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/vendorsettings/widget/SwitchBar;->a(Lcom/android/vendorsettings/widget/I;)V

    .line 120
    iput-boolean v1, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->Cn:Z

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->qS()V

    .line 123
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0x34

    return v0
.end method
