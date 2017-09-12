.class public Lcom/android/server/policy/MiuiKeyguardServiceDelegate;
.super Lcom/android/server/policy/AbstractKeyguardServiceDelegate;
.source "MiuiKeyguardServiceDelegate.java"


# instance fields
.field protected mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field protected mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field protected mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Landroid/os/PowerManager;)V
    .locals 0
    .param p1, "phoneWindowManager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "keyguardDelegate"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
    .param p3, "powerManager"    # Landroid/os/PowerManager;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/server/policy/AbstractKeyguardServiceDelegate;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 17
    iput-object p2, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 18
    iput-object p3, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mPowerManager:Landroid/os/PowerManager;

    .line 19
    return-void
.end method


# virtual methods
.method public OnDoubleClickHome()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->OnDoubleClickHome()V

    .line 54
    :cond_0
    return-void
.end method

.method protected enableUserActivity(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 22
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isShowingAndNotHidden()Z
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyguardDone()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    iget-object v0, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->keyguardDone(ZZ)V

    .line 35
    return-void
.end method

.method public onScreenTurnedOnWithoutListener()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn()V

    .line 45
    :cond_0
    return-void
.end method

.method public onWakeKeyWhenKeyguardShowingTq(IZ)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "isDocked"    # Z

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public pokeWakelock()V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 49
    return-void
.end method
