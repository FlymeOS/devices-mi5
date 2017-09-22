.class Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$1;
.super Ljava/lang/Object;
.source "BatteryIndicatorStyle.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aeN:Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$1;->aeN:Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$1;->aeN:Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->a(Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;)[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    if-ltz p2, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$1;->aeN:Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->a(Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;)[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 48
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$1;->aeN:Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->b(Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "battery_indicator_style"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 51
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 52
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$1;->aeN:Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->finish()V

    .line 53
    return-void
.end method
