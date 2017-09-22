.class public abstract Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "PowerUsageBase.java"


# instance fields
.field protected aN:Landroid/os/UserManager;

.field protected aeK:Lcom/android/internal/os/BatteryStatsHelper;

.field private afk:Ljava/lang/String;

.field private afl:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private zm:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 149
    new-instance v0, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase$1;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase$1;-><init>(Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;)V

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->mHandler:Landroid/os/Handler;

    .line 161
    new-instance v0, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase$2;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase$2;-><init>(Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;)V

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->zm:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->x(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private x(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    .line 134
    if-eqz p1, :cond_1

    .line 135
    invoke-static {p1}, Lcom/android/vendorsettings/iC;->q(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/vendorsettings/iC;->a(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 138
    iget-object v2, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->afk:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->afl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 139
    :cond_0
    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->afk:Ljava/lang/String;

    .line 140
    iput-object v1, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->afl:Ljava/lang/String;

    .line 141
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/android/vendorsettings/fuelgauge/BatteryHistoryPreference;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->aeK:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p1, v0}, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryPreference;->a(Lcom/android/internal/os/BatteryStatsHelper;)V

    .line 131
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 53
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->aN:Landroid/os/UserManager;

    .line 54
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->aeK:Lcom/android/internal/os/BatteryStatsHelper;

    .line 55
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->aeK:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->setHasOptionsMenu(Z)V

    .line 62
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 105
    const/4 v0, 0x2

    const v1, 0x7f0c0762

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->action_button_refresh_light:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    .line 110
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 112
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 97
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->aeK:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->storeState()V

    .line 100
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 115
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 122
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 117
    :pswitch_0
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->aeK:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 118
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->refreshStats()V

    .line 119
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 120
    const/4 v0, 0x1

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPause()V

    .line 85
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->zm:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    .line 72
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 73
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "tmp_bat_history.bin"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->dropFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->zm:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->x(Landroid/content/Intent;)Z

    .line 76
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 78
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->aeK:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 80
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onStart()V

    .line 67
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->aeK:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 68
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onStop()V

    .line 91
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 92
    return-void
.end method

.method protected refreshStats()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->aeK:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->aN:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILjava/util/List;)V

    .line 127
    return-void
.end method
