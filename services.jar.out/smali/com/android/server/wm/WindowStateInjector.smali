.class Lcom/android/server/wm/WindowStateInjector;
.super Ljava/lang/Object;
.source "WindowStateInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static reportHappendErrorDuringResized(Lcom/android/server/wm/WindowState;Landroid/os/RemoteException;)V
    .locals 3
    .param p0, "thiz"    # Lcom/android/server/wm/WindowState;
    .param p1, "e"    # Landroid/os/RemoteException;

    .prologue
    const/4 v2, 0x0

    .line 9
    instance-of v0, p1, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_0

    .line 10
    const-string v0, "WindowState"

    const-string v1, "Error happens during resized "

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    .line 13
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    .line 14
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    .line 15
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mStableInsetsChanged:Z

    .line 16
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    .line 19
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 21
    :cond_0
    return-void
.end method
