.class Lcom/android/vendorsettings/fuelgauge/BatteryIndicatorStyle$3;
.super Ljava/lang/Object;
.source "BatteryIndicatorStyle.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic aeN:Lcom/android/vendorsettings/fuelgauge/BatteryIndicatorStyle;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/fuelgauge/BatteryIndicatorStyle;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/vendorsettings/fuelgauge/BatteryIndicatorStyle$3;->aeN:Lcom/android/vendorsettings/fuelgauge/BatteryIndicatorStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatteryIndicatorStyle$3;->aeN:Lcom/android/vendorsettings/fuelgauge/BatteryIndicatorStyle;

    invoke-virtual {v0}, Lcom/android/vendorsettings/fuelgauge/BatteryIndicatorStyle;->finish()V

    .line 67
    return-void
.end method
