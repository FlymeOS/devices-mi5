.class final Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;
.super Lmiui/maml/component/MamlView;
.source "MiuiGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MiuiGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GlobalActionsMamlView"
.end annotation


# instance fields
.field private mCancelOnUp:Z

.field private mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

.field private mIntercepted:Z

.field final synthetic this$0:Lcom/android/server/policy/MiuiGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/MiuiGlobalActions;Landroid/content/Context;Lmiui/maml/ScreenElementRoot;J)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p4, "startDelay"    # J

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    .line 338
    invoke-direct {p0, p2, p3, p4, p5}, Lmiui/maml/component/MamlView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;J)V

    .line 339
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/EnableAccessibilityController;->canEnableAccessibilityViaGesture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    new-instance v0, Lcom/android/server/policy/EnableAccessibilityController;

    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView$1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView$1;-><init>(Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;Lcom/android/server/policy/MiuiGlobalActions;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/EnableAccessibilityController;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 354
    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    if-eqz v2, :cond_2

    .line 355
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 357
    .local v8, "action":I
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->mIntercepted:Z

    if-nez v2, :cond_4

    .line 358
    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/server/policy/EnableAccessibilityController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->mIntercepted:Z

    .line 359
    iget-boolean v2, p0, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->mIntercepted:Z

    if-eqz v2, :cond_0

    .line 360
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 361
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 363
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 364
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->mCancelOnUp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    .end local v0    # "now":J
    :cond_0
    if-ne v8, v10, :cond_2

    .line 371
    iget-boolean v2, p0, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->mCancelOnUp:Z

    if-eqz v2, :cond_1

    .line 372
    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    # getter for: Lcom/android/server/policy/MiuiGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/policy/MiuiGlobalActions;->access$200(Lcom/android/server/policy/MiuiGlobalActions;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 374
    :cond_1
    iput-boolean v9, p0, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->mCancelOnUp:Z

    .line 375
    iput-boolean v9, p0, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->mIntercepted:Z

    .line 379
    .end local v8    # "action":I
    :cond_2
    invoke-super {p0, p1}, Lmiui/maml/component/MamlView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_3
    :goto_0
    return v2

    .line 367
    .restart local v8    # "action":I
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/server/policy/EnableAccessibilityController;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 370
    if-ne v8, v10, :cond_3

    .line 371
    iget-boolean v3, p0, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->mCancelOnUp:Z

    if-eqz v3, :cond_5

    .line 372
    iget-object v3, p0, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    # getter for: Lcom/android/server/policy/MiuiGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/policy/MiuiGlobalActions;->access$200(Lcom/android/server/policy/MiuiGlobalActions;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 374
    :cond_5
    iput-boolean v9, p0, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->mCancelOnUp:Z

    .line 375
    iput-boolean v9, p0, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->mIntercepted:Z

    goto :goto_0

    .line 370
    :catchall_0
    move-exception v2

    if-ne v8, v10, :cond_7

    .line 371
    iget-boolean v3, p0, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->mCancelOnUp:Z

    if-eqz v3, :cond_6

    .line 372
    iget-object v3, p0, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    # getter for: Lcom/android/server/policy/MiuiGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/policy/MiuiGlobalActions;->access$200(Lcom/android/server/policy/MiuiGlobalActions;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 374
    :cond_6
    iput-boolean v9, p0, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->mCancelOnUp:Z

    .line 375
    iput-boolean v9, p0, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->mIntercepted:Z

    :cond_7
    throw v2
.end method
