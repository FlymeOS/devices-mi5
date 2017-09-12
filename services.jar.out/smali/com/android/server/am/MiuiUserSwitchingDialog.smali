.class final Lcom/android/server/am/MiuiUserSwitchingDialog;
.super Lmiui/app/AlertDialog;
.source "MiuiUserSwitchingDialog.java"


# static fields
.field static final MSG_START_USER:I = 0x1

.field private static final WINDOW_SHOWN_TIMEOUT_MS:I = 0xbb8


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mMessageView:Landroid/widget/TextView;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mStartedUser:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;I)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I

    .prologue
    .line 33
    invoke-direct {p0, p2}, Lmiui/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance v0, Lcom/android/server/am/MiuiUserSwitchingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/MiuiUserSwitchingDialog$1;-><init>(Lcom/android/server/am/MiuiUserSwitchingDialog;)V

    iput-object v0, p0, Lcom/android/server/am/MiuiUserSwitchingDialog;->mHandler:Landroid/os/Handler;

    .line 34
    iput-object p1, p0, Lcom/android/server/am/MiuiUserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 35
    iput p3, p0, Lcom/android/server/am/MiuiUserSwitchingDialog;->mUserId:I

    .line 36
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/android/server/am/MiuiUserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7da

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 41
    invoke-virtual {p0}, Lcom/android/server/am/MiuiUserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 42
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v5, 0x110

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 44
    invoke-virtual {p0}, Lcom/android/server/am/MiuiUserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/server/am/MiuiUserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 46
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/server/am/MiuiUserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/miui/internal/R$styleable;->AlertDialog:[I

    const v7, 0x101005d

    const/4 v8, 0x0

    invoke-virtual {v5, v9, v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v5, Lcom/miui/internal/R$styleable;->AlertDialog_progressLayout:I

    sget v6, Lcom/miui/internal/R$layout;->progress_dialog:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v2, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 52
    .local v4, "view":Landroid/view/View;
    sget v5, Lmiui/R$id;->message:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/server/am/MiuiUserSwitchingDialog;->mMessageView:Landroid/widget/TextView;

    .line 53
    const v5, 0x102000d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 54
    .local v3, "mProgress":Landroid/view/View;
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 55
    invoke-virtual {p0, v4}, Lcom/android/server/am/MiuiUserSwitchingDialog;->setView(Landroid/view/View;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/server/am/MiuiUserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x110700d0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/am/MiuiUserSwitchingDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 57
    invoke-super {p0, p1}, Lmiui/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 58
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/am/MiuiUserSwitchingDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 62
    invoke-super {p0}, Lmiui/app/AlertDialog;->show()V

    .line 63
    iget-object v0, p0, Lcom/android/server/am/MiuiUserSwitchingDialog;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p0}, Lcom/android/server/am/UserSwitchingDialogInjector;->switchUser(Landroid/os/Handler;Lcom/android/server/am/MiuiUserSwitchingDialog;)V

    .line 66
    iget-object v0, p0, Lcom/android/server/am/MiuiUserSwitchingDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/MiuiUserSwitchingDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 68
    return-void
.end method

.method startUser()V
    .locals 2

    .prologue
    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/MiuiUserSwitchingDialog;->mStartedUser:Z

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/server/am/MiuiUserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, p0, Lcom/android/server/am/MiuiUserSwitchingDialog;->mUserId:I

    invoke-static {v0, v1, p0}, Lcom/android/server/am/UserSwitchingDialogInjector;->startUserInForeground(Lcom/android/server/am/ActivityManagerService;ILandroid/app/Dialog;)V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MiuiUserSwitchingDialog;->mStartedUser:Z

    .line 80
    invoke-static {p0}, Lcom/android/server/am/UserSwitchingDialogInjector;->finishSwitchUser(Landroid/app/Dialog;)V

    .line 81
    iget-object v0, p0, Lcom/android/server/am/MiuiUserSwitchingDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    :cond_0
    monitor-exit p0

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
