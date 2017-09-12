.class public Lcom/android/server/policy/ShowNavBarGesturesListenerCallbacks;
.super Ljava/lang/Object;
.source "ShowNavBarGesturesListenerCallbacks.java"

# interfaces
.implements Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mManager:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/server/policy/ShowNavBarGesturesListenerCallbacks;->mContext:Landroid/content/Context;

    .line 14
    iput-object p2, p0, Lcom/android/server/policy/ShowNavBarGesturesListenerCallbacks;->mManager:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 15
    return-void
.end method


# virtual methods
.method public onDebug()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public onDown()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onFling(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 42
    return-void
.end method

.method public onSwipeFromBottom()V
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/policy/ShowNavBarGesturesListenerCallbacks;->mManager:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/ShowNavBarGesturesListenerCallbacks;->mManager:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/android/server/policy/ShowNavBarGesturesListenerCallbacks;->mManager:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHideNavBar:Z

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/android/server/policy/ShowNavBarGesturesListenerCallbacks;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_nav_bar"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 29
    :cond_0
    return-void
.end method

.method public onSwipeFromRight()V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/policy/ShowNavBarGesturesListenerCallbacks;->mManager:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/ShowNavBarGesturesListenerCallbacks;->mManager:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavigationBarOnBottom:Z

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/android/server/policy/ShowNavBarGesturesListenerCallbacks;->mManager:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHideNavBar:Z

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/android/server/policy/ShowNavBarGesturesListenerCallbacks;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_nav_bar"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 39
    :cond_0
    return-void
.end method

.method public onSwipeFromTop()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public onUpOrCancel()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method
