.class Lcom/android/vendorsettings/fuelgauge/BatteryIndicatorStyle$2;
.super Ljava/lang/Object;
.source "BatteryIndicatorStyle.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aeN:Lcom/android/vendorsettings/fuelgauge/BatteryIndicatorStyle;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/fuelgauge/BatteryIndicatorStyle;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/vendorsettings/fuelgauge/BatteryIndicatorStyle$2;->aeN:Lcom/android/vendorsettings/fuelgauge/BatteryIndicatorStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatteryIndicatorStyle$2;->aeN:Lcom/android/vendorsettings/fuelgauge/BatteryIndicatorStyle;

    invoke-virtual {v0}, Lcom/android/vendorsettings/fuelgauge/BatteryIndicatorStyle;->finish()V

    .line 60
    return-void
.end method
