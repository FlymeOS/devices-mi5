.class Lcom/android/vendorsettings/deviceinfo/SimStatus$2;
.super Landroid/telephony/PhoneStateListener;
.source "SimStatus.java"


# instance fields
.field final synthetic WJ:Lcom/android/vendorsettings/deviceinfo/SimStatus;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/deviceinfo/SimStatus;I)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/vendorsettings/deviceinfo/SimStatus$2;->WJ:Lcom/android/vendorsettings/deviceinfo/SimStatus;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/SimStatus$2;->WJ:Lcom/android/vendorsettings/deviceinfo/SimStatus;

    invoke-static {v0}, Lcom/android/vendorsettings/deviceinfo/SimStatus;->b(Lcom/android/vendorsettings/deviceinfo/SimStatus;)V

    .line 425
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/SimStatus$2;->WJ:Lcom/android/vendorsettings/deviceinfo/SimStatus;

    invoke-static {v0}, Lcom/android/vendorsettings/deviceinfo/SimStatus;->c(Lcom/android/vendorsettings/deviceinfo/SimStatus;)V

    .line 426
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/SimStatus$2;->WJ:Lcom/android/vendorsettings/deviceinfo/SimStatus;

    invoke-static {v0, p1}, Lcom/android/vendorsettings/deviceinfo/SimStatus;->a(Lcom/android/vendorsettings/deviceinfo/SimStatus;Landroid/telephony/ServiceState;)V

    .line 436
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/SimStatus$2;->WJ:Lcom/android/vendorsettings/deviceinfo/SimStatus;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/deviceinfo/SimStatus;->a(Landroid/telephony/SignalStrength;)V

    .line 431
    return-void
.end method
