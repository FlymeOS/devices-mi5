.class Lcom/android/vendorsettings/ak;
.super Landroid/os/Handler;
.source "BootloaderApplyActivity.java"


# instance fields
.field final synthetic cQ:Lcom/android/vendorsettings/BootloaderApplyActivity;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/BootloaderApplyActivity;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/vendorsettings/ak;->cQ:Lcom/android/vendorsettings/BootloaderApplyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/4 v1, 0x5

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 70
    iget-object v0, p0, Lcom/android/vendorsettings/ak;->cQ:Lcom/android/vendorsettings/BootloaderApplyActivity;

    invoke-static {v0}, Lcom/android/vendorsettings/BootloaderApplyActivity;->a(Lcom/android/vendorsettings/BootloaderApplyActivity;)I

    .line 71
    iget-object v0, p0, Lcom/android/vendorsettings/ak;->cQ:Lcom/android/vendorsettings/BootloaderApplyActivity;

    invoke-static {v0}, Lcom/android/vendorsettings/BootloaderApplyActivity;->b(Lcom/android/vendorsettings/BootloaderApplyActivity;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/ak;->cQ:Lcom/android/vendorsettings/BootloaderApplyActivity;

    invoke-static {v0}, Lcom/android/vendorsettings/BootloaderApplyActivity;->c(Lcom/android/vendorsettings/BootloaderApplyActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/vendorsettings/ak;->cQ:Lcom/android/vendorsettings/BootloaderApplyActivity;

    invoke-static {v0}, Lcom/android/vendorsettings/BootloaderApplyActivity;->d(Lcom/android/vendorsettings/BootloaderApplyActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0c1155

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 73
    iget-object v0, p0, Lcom/android/vendorsettings/ak;->cQ:Lcom/android/vendorsettings/BootloaderApplyActivity;

    invoke-static {v0}, Lcom/android/vendorsettings/BootloaderApplyActivity;->d(Lcom/android/vendorsettings/BootloaderApplyActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 93
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/ak;->cQ:Lcom/android/vendorsettings/BootloaderApplyActivity;

    invoke-static {v0}, Lcom/android/vendorsettings/BootloaderApplyActivity;->c(Lcom/android/vendorsettings/BootloaderApplyActivity;)I

    move-result v0

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/android/vendorsettings/ak;->cQ:Lcom/android/vendorsettings/BootloaderApplyActivity;

    invoke-static {v0}, Lcom/android/vendorsettings/BootloaderApplyActivity;->d(Lcom/android/vendorsettings/BootloaderApplyActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0c1158

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 78
    iget-object v0, p0, Lcom/android/vendorsettings/ak;->cQ:Lcom/android/vendorsettings/BootloaderApplyActivity;

    invoke-static {v0}, Lcom/android/vendorsettings/BootloaderApplyActivity;->d(Lcom/android/vendorsettings/BootloaderApplyActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/ak;->cQ:Lcom/android/vendorsettings/BootloaderApplyActivity;

    invoke-static {v0}, Lcom/android/vendorsettings/BootloaderApplyActivity;->b(Lcom/android/vendorsettings/BootloaderApplyActivity;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 81
    iget-object v0, p0, Lcom/android/vendorsettings/ak;->cQ:Lcom/android/vendorsettings/BootloaderApplyActivity;

    invoke-static {v0}, Lcom/android/vendorsettings/BootloaderApplyActivity;->d(Lcom/android/vendorsettings/BootloaderApplyActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/ak;->cQ:Lcom/android/vendorsettings/BootloaderApplyActivity;

    const v2, 0x7f0c1156

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/vendorsettings/ak;->cQ:Lcom/android/vendorsettings/BootloaderApplyActivity;

    invoke-static {v4}, Lcom/android/vendorsettings/BootloaderApplyActivity;->c(Lcom/android/vendorsettings/BootloaderApplyActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/vendorsettings/BootloaderApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :goto_1
    iget-object v0, p0, Lcom/android/vendorsettings/ak;->cQ:Lcom/android/vendorsettings/BootloaderApplyActivity;

    invoke-static {v0}, Lcom/android/vendorsettings/BootloaderApplyActivity;->e(Lcom/android/vendorsettings/BootloaderApplyActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 89
    iget-object v0, p0, Lcom/android/vendorsettings/ak;->cQ:Lcom/android/vendorsettings/BootloaderApplyActivity;

    invoke-static {v0}, Lcom/android/vendorsettings/BootloaderApplyActivity;->e(Lcom/android/vendorsettings/BootloaderApplyActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/ak;->cQ:Lcom/android/vendorsettings/BootloaderApplyActivity;

    invoke-static {v0}, Lcom/android/vendorsettings/BootloaderApplyActivity;->d(Lcom/android/vendorsettings/BootloaderApplyActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/ak;->cQ:Lcom/android/vendorsettings/BootloaderApplyActivity;

    const v2, 0x7f0c1159

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/vendorsettings/ak;->cQ:Lcom/android/vendorsettings/BootloaderApplyActivity;

    invoke-static {v4}, Lcom/android/vendorsettings/BootloaderApplyActivity;->c(Lcom/android/vendorsettings/BootloaderApplyActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/vendorsettings/BootloaderApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
