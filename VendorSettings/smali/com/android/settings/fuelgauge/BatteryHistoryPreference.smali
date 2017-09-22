.class public Lcom/android/settings/fuelgauge/BatteryHistoryPreference;
.super Landroid/preference/Preference;
.source "BatteryHistoryPreference.java"


# instance fields
.field private ado:Landroid/os/BatteryStats;

.field private adp:Landroid/content/Intent;

.field private aeL:Lcom/android/settings/fuelgauge/BatteryHistoryChart;

.field private aeM:Lcom/android/internal/os/BatteryStatsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method


# virtual methods
.method public a(Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 2

    .prologue
    const v1, 0x7f040022

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->aeL:Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    .line 72
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->aeM:Lcom/android/internal/os/BatteryStatsHelper;

    .line 73
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->ado:Landroid/os/BatteryStats;

    .line 74
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getBatteryBroadcast()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->adp:Landroid/content/Intent;

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->getLayoutResource()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 77
    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setLayoutResource(I)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->notifyChanged()V

    .line 80
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->ado:Landroid/os/BatteryStats;

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 93
    :cond_0
    const v0, 0x7f130047

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    .line 95
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->aeL:Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    if-nez v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->ado:Landroid/os/BatteryStats;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->adp:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->a(Landroid/os/BatteryStats;Landroid/content/Intent;)V

    .line 98
    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->aeL:Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 103
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 104
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->aeL:Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->aeL:Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->aeL:Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->aeL:Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public performClick(Landroid/preference/PreferenceScreen;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->aeM:Lcom/android/internal/os/BatteryStatsHelper;

    const-string v1, "tmp_bat_history.bin"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->storeStatsHistoryInFile(Ljava/lang/String;)V

    .line 58
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 59
    const-string v0, "stats"

    const-string v1, "tmp_bat_history.bin"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v0, "broadcast"

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->aeM:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->getBatteryBroadcast()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/hn;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/settings/hn;

    .line 64
    const-class v1, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0720

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/hn;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method
