.class public Lcom/android/vendorsettings/fuelgauge/BatteryHistoryDetail;
.super Lcom/android/vendorsettings/InstrumentedFragment;
.source "BatteryHistoryDetail.java"


# instance fields
.field private ado:Landroid/os/BatteryStats;

.field private adp:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/vendorsettings/InstrumentedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/android/vendorsettings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "stats"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/os/BatteryStatsHelper;->statsFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/os/BatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryDetail;->ado:Landroid/os/BatteryStats;

    .line 43
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "broadcast"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryDetail;->adp:Landroid/content/Intent;

    .line 44
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 48
    const v0, 0x7f040022

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 49
    const v0, 0x7f130047

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryChart;

    .line 51
    iget-object v2, p0, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryDetail;->ado:Landroid/os/BatteryStats;

    iget-object v3, p0, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryDetail;->adp:Landroid/content/Intent;

    invoke-virtual {v0, v2, v3}, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryChart;->a(Landroid/os/BatteryStats;Landroid/content/Intent;)V

    .line 52
    return-object v1
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 57
    const/16 v0, 0x33

    return v0
.end method
