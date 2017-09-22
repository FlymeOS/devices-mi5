.class Lcom/android/settings/fuelgauge/BatterySettings$1;
.super Landroid/database/ContentObserver;
.source "BatterySettings.java"


# instance fields
.field final synthetic afd:Lcom/android/settings/fuelgauge/BatterySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/BatterySettings;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatterySettings$1;->afd:Lcom/android/settings/fuelgauge/BatterySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySettings$1;->afd:Lcom/android/settings/fuelgauge/BatterySettings;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatterySettings;->a(Lcom/android/settings/fuelgauge/BatterySettings;)V

    .line 49
    return-void
.end method
