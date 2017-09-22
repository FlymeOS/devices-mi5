.class public Lcom/android/vendorsettings/CryptKeeperConfirm$Blank;
.super Landroid/app/Activity;
.source "CryptKeeperConfirm.java"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/CryptKeeperConfirm$Blank;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f040040

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/CryptKeeperConfirm$Blank;->setContentView(I)V

    .line 60
    invoke-static {}, Lcom/android/vendorsettings/iC;->iu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/vendorsettings/CryptKeeperConfirm$Blank;->finish()V

    .line 64
    :cond_0
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/CryptKeeperConfirm$Blank;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 65
    const/high16 v1, 0x3770000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 77
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeperConfirm$Blank;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/vendorsettings/bn;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/bn;-><init>(Lcom/android/vendorsettings/CryptKeeperConfirm$Blank;)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    return-void
.end method
