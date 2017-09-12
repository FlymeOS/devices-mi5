.class Lcom/android/server/policy/PhoneWindowManagerInjector;
.super Ljava/lang/Object;
.source "PhoneWindowManagerInjector.java"


# static fields
.field private static sOldmanLastTopFullscreenOpaqueWmLp:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDockTopForUserMode(II)I
    .locals 1
    .param p0, "unrestrictedScreenTop"    # I
    .param p1, "statusBarHeight"    # I

    .prologue
    .line 40
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerInjector;->oldmanNeedFixSoftInputResizeLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    .end local p0    # "unrestrictedScreenTop":I
    :goto_0
    return p0

    .restart local p0    # "unrestrictedScreenTop":I
    :cond_0
    add-int/2addr p0, p1

    goto :goto_0
.end method

.method static initOldmanLastTopLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p0, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 24
    sput-object p0, Lcom/android/server/policy/PhoneWindowManagerInjector;->sOldmanLastTopFullscreenOpaqueWmLp:Landroid/view/WindowManager$LayoutParams;

    .line 25
    return-void
.end method

.method static isNeedResetFrameRect(I)Z
    .locals 1
    .param p0, "adjust"    # I

    .prologue
    .line 36
    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerInjector;->oldmanNeedFixSoftInputResizeLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static oldmanNeedFixSoftInputResizeLayout()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 28
    sget-object v2, Lcom/android/server/policy/PhoneWindowManagerInjector;->sOldmanLastTopFullscreenOpaqueWmLp:Landroid/view/WindowManager$LayoutParams;

    if-nez v2, :cond_1

    .line 32
    :cond_0
    :goto_0
    return v0

    .line 30
    :cond_1
    invoke-static {}, Lmiui/os/Build;->getUserMode()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 32
    sget-object v2, Lcom/android/server/policy/PhoneWindowManagerInjector;->sOldmanLastTopFullscreenOpaqueWmLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-eq v2, v3, :cond_2

    sget-object v2, Lcom/android/server/policy/PhoneWindowManagerInjector;->sOldmanLastTopFullscreenOpaqueWmLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x10100

    and-int/2addr v2, v3

    const/16 v3, 0x100

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static performReleaseHapticFeedback(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/KeyEvent;I)V
    .locals 2
    .param p0, "manager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 14
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 19
    .local v0, "down":Z
    :goto_0
    return-void

    .line 14
    .end local v0    # "down":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
