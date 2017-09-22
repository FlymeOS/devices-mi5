.class Lcom/android/settings/msim/c;
.super Landroid/telephony/PhoneStateListener;
.source "SimFragment.java"


# instance fields
.field final synthetic ahM:Lcom/android/settings/msim/SimFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/msim/SimFragment;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/settings/msim/c;->ahM:Lcom/android/settings/msim/SimFragment;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/msim/c;->ahM:Lcom/android/settings/msim/SimFragment;

    invoke-static {v0}, Lcom/android/settings/msim/SimFragment;->a(Lcom/android/settings/msim/SimFragment;)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/msim/c;->ahM:Lcom/android/settings/msim/SimFragment;

    invoke-static {v0}, Lcom/android/settings/msim/SimFragment;->b(Lcom/android/settings/msim/SimFragment;)V

    .line 95
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/msim/c;->ahM:Lcom/android/settings/msim/SimFragment;

    invoke-static {v0, p1}, Lcom/android/settings/msim/SimFragment;->a(Lcom/android/settings/msim/SimFragment;Landroid/telephony/ServiceState;)V

    .line 105
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/msim/c;->ahM:Lcom/android/settings/msim/SimFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/msim/SimFragment;->a(Landroid/telephony/SignalStrength;)V

    .line 100
    return-void
.end method
