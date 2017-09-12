.class Lcom/android/server/wm/WindowManagerServiceInjector;
.super Ljava/lang/Object;
.source "WindowManagerServiceInjector.java"


# static fields
.field private static FORCE_ORI_LIST:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "WindowManagerService"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.tencent.mm/com.tencent.mm.plugin.voip.ui.VideoActivity"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->FORCE_ORI_LIST:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustWindowParams(Landroid/app/AppOpsManager;Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;I)V
    .locals 4
    .param p0, "appOps"    # Landroid/app/AppOpsManager;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 37
    if-nez p1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-nez v1, :cond_2

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 41
    :cond_2
    const/16 v1, 0x2724

    invoke-virtual {p0, v1, p3, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 42
    .local v0, "mode":I
    if-eqz v0, :cond_0

    .line 43
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x80001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 44
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x400001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 45
    const-string v1, "WindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIUILOG- Show when locked PermissionDenied pkg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getForceOrientation(Lcom/android/server/wm/AppWindowToken;)I
    .locals 7
    .param p0, "atoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 71
    const-string v5, "lithium"

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 73
    .local v4, "win":Lcom/android/server/wm/WindowState;
    if-eqz v4, :cond_1

    .line 74
    sget-object v5, Lcom/android/server/wm/WindowManagerServiceInjector;->FORCE_ORI_LIST:[Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 75
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->FORCE_ORI_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 76
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 77
    const/4 v5, 0x7

    .line 83
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    :goto_1
    return v5

    .line 75
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "win":Lcom/android/server/wm/WindowState;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    iget v5, p0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    goto :goto_1
.end method

.method public static isAllowedDisableKeyguard(Landroid/app/AppOpsManager;I)Z
    .locals 6
    .param p0, "appOps"    # Landroid/app/AppOpsManager;
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 51
    const/4 v1, 0x0

    .line 53
    .local v1, "packages":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 57
    :goto_0
    if-eqz v1, :cond_0

    array-length v4, v1

    if-nez v4, :cond_1

    .line 65
    :cond_0
    :goto_1
    return v2

    .line 60
    :cond_1
    const/16 v4, 0x2724

    aget-object v5, v1, v3

    invoke-virtual {p0, v4, p1, v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 61
    .local v0, "mode":I
    if-eqz v0, :cond_0

    .line 64
    const-string v2, "WindowManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MIUILOG- DisableKeyguard PermissionDenied uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 65
    goto :goto_1

    .line 54
    .end local v0    # "mode":I
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method static reportHappendErrorDuringResized(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;Landroid/os/RemoteException;)V
    .locals 3
    .param p0, "thiz"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p3, "e"    # Landroid/os/RemoteException;

    .prologue
    const/4 v2, 0x0

    .line 20
    instance-of v0, p3, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_0

    .line 21
    const-string v0, "WindowState"

    const-string v1, "Error happens during resized "

    invoke-static {v0, v1, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    iput-boolean v2, p1, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    .line 24
    iput-boolean v2, p1, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    .line 25
    iput-boolean v2, p1, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    .line 26
    iput-boolean v2, p2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    .line 29
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 31
    :cond_0
    return-void
.end method
