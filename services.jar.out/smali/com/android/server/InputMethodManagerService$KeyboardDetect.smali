.class Lcom/android/server/InputMethodManagerService$KeyboardDetect;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyboardDetect"
.end annotation


# instance fields
.field final BACKGROUND:I

.field final FOREGROUND:I

.field final INACTIVE:I

.field private enKeyOpt:Z

.field private keyboardParams:[I

.field private keyboardState:I

.field private mPerf:Landroid/util/BoostFramework;

.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 420
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->mPerf:Landroid/util/BoostFramework;

    .line 422
    iput v1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->keyboardState:I

    .line 426
    iput v1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->INACTIVE:I

    .line 427
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->FOREGROUND:I

    .line 428
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->BACKGROUND:I

    return-void
.end method


# virtual methods
.method declared-synchronized getKeyboardState()I
    .locals 1

    .prologue
    .line 475
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->keyboardState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized keyboardPerflockAcquire()V
    .locals 4

    .prologue
    .line 441
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->mPerf:Landroid/util/BoostFramework;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 443
    :try_start_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->keyboardParams:[I

    if-nez v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->setKeyboardParams(Landroid/content/Context;)V

    .line 445
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->keyboardParams:[I

    if-eqz v1, :cond_1

    .line 446
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->mPerf:Landroid/util/BoostFramework;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->keyboardParams:[I

    invoke-virtual {v1, v2, v3}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "InputMethodManagerService"

    const-string v2, "Exception caught at perflock acquire"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 441
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 454
    :cond_2
    :try_start_3
    const-string v1, "InputMethodManagerService"

    const-string v2, "Perflock object null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized keyboardPerflockRelease()V
    .locals 3

    .prologue
    .line 460
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->mPerf:Landroid/util/BoostFramework;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 462
    :try_start_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->mPerf:Landroid/util/BoostFramework;

    invoke-virtual {v1}, Landroid/util/BoostFramework;->perfLockRelease()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    :goto_0
    monitor-exit p0

    return-void

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "InputMethodManagerService"

    const-string v2, "Exception caught at perflock release"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 460
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 469
    :cond_0
    :try_start_3
    const-string v1, "InputMethodManagerService"

    const-string v2, "Perflock object null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized setKeyboardParams(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 431
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->enKeyOpt:Z

    .line 433
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->enKeyOpt:Z

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->keyboardParams:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    :cond_0
    monitor-exit p0

    return-void

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setKeyboardState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 479
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->keyboardState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    monitor-exit p0

    return-void

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
