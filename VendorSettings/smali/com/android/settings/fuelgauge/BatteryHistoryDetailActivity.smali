.class public Lcom/android/settings/fuelgauge/BatteryHistoryDetailActivity;
.super Landroid/preference/PreferenceActivity;
.source "BatteryHistoryDetailActivity.java"


# instance fields
.field private aeK:Lcom/android/internal/os/BatteryStatsHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 17
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetailActivity;->aeK:Lcom/android/internal/os/BatteryStatsHelper;

    .line 19
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetailActivity;->aeK:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 20
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetailActivity;->aeK:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 21
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    const-string v1, "com.android.settings.action.BATTERY_HISTORY_DETAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetailActivity;->aeK:Lcom/android/internal/os/BatteryStatsHelper;

    const-string v1, "tmp_bat_history.bin"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->storeStatsHistoryInFile(Ljava/lang/String;)V

    .line 24
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 25
    const-string v0, "stats"

    const-string v1, "tmp_bat_history.bin"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v0, "broadcast"

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetailActivity;->aeK:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->getBatteryBroadcast()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 29
    const-class v0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0720

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/fuelgauge/BatteryHistoryDetailActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetailActivity;->finish()V

    .line 33
    :cond_0
    return-void
.end method
