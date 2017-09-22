.class Lcom/android/settings/es;
.super Ljava/lang/Object;
.source "MiuiFingerprintDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic mQ:Lcom/android/settings/de;

.field final synthetic re:Lcom/android/settings/MiuiFingerprintDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiFingerprintDetailFragment;Lcom/android/settings/de;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/es;->re:Lcom/android/settings/MiuiFingerprintDetailFragment;

    iput-object p2, p0, Lcom/android/settings/es;->mQ:Lcom/android/settings/de;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 81
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 82
    new-instance v0, Lcom/android/settings/cZ;

    iget-object v1, p0, Lcom/android/settings/es;->re:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-virtual {v1}, Lcom/android/settings/MiuiFingerprintDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/cZ;-><init>(Landroid/content/Context;)V

    .line 83
    iget-object v1, p0, Lcom/android/settings/es;->re:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-static {v1}, Lcom/android/settings/MiuiFingerprintDetailFragment;->a(Lcom/android/settings/MiuiFingerprintDetailFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/es;->mQ:Lcom/android/settings/de;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/cZ;->a(Ljava/lang/String;Lcom/android/settings/de;)V

    .line 85
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 86
    return-void
.end method
