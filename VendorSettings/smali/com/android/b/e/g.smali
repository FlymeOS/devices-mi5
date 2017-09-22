.class Lcom/android/b/e/g;
.super Landroid/os/Handler;
.source "WifiTracker.java"


# instance fields
.field final synthetic aLc:Lcom/android/b/e/c;

.field private aLe:I


# direct methods
.method constructor <init>(Lcom/android/b/e/c;)V
    .locals 1

    .prologue
    .line 623
    iput-object p1, p0, Lcom/android/b/e/g;->aLc:Lcom/android/b/e/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 626
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/b/e/g;->aLe:I

    return-void
.end method


# virtual methods
.method AK()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 635
    invoke-virtual {p0, v0}, Lcom/android/b/e/g;->removeMessages(I)V

    .line 636
    invoke-virtual {p0, v0}, Lcom/android/b/e/g;->sendEmptyMessage(I)Z

    .line 637
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 651
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/android/b/e/g;->aLc:Lcom/android/b/e/c;

    invoke-static {v0}, Lcom/android/b/e/c;->g(Lcom/android/b/e/c;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 653
    iput v2, p0, Lcom/android/b/e/g;->aLe:I

    .line 661
    :cond_2
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/b/e/g;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 654
    :cond_3
    iget v0, p0, Lcom/android/b/e/g;->aLe:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/b/e/g;->aLe:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 655
    iput v2, p0, Lcom/android/b/e/g;->aLe:I

    .line 656
    iget-object v0, p0, Lcom/android/b/e/g;->aLc:Lcom/android/b/e/c;

    iget-object v0, v0, Lcom/android/b/e/c;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/android/b/e/g;->aLc:Lcom/android/b/e/c;

    iget-object v0, v0, Lcom/android/b/e/c;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/b/e;->aHA:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method pause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 640
    iput v0, p0, Lcom/android/b/e/g;->aLe:I

    .line 641
    invoke-virtual {p0, v0}, Lcom/android/b/e/g;->removeMessages(I)V

    .line 642
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 629
    invoke-virtual {p0, v1}, Lcom/android/b/e/g;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 630
    invoke-virtual {p0, v1}, Lcom/android/b/e/g;->sendEmptyMessage(I)Z

    .line 632
    :cond_0
    return-void
.end method
