.class Lcom/android/settings/fingerprint/J;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic acx:Lcom/android/settings/fingerprint/G;

.field final synthetic acy:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/G;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/settings/fingerprint/J;->acx:Lcom/android/settings/fingerprint/G;

    iput-object p2, p0, Lcom/android/settings/fingerprint/J;->acy:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 585
    iget-object v1, p0, Lcom/android/settings/fingerprint/J;->acx:Lcom/android/settings/fingerprint/G;

    iget-object v0, p0, Lcom/android/settings/fingerprint/J;->acy:Landroid/app/AlertDialog;

    const v2, 0x7f130103

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v1, v0}, Lcom/android/settings/fingerprint/G;->a(Lcom/android/settings/fingerprint/G;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 587
    iget-object v0, p0, Lcom/android/settings/fingerprint/J;->acx:Lcom/android/settings/fingerprint/G;

    invoke-static {v0}, Lcom/android/settings/fingerprint/G;->c(Lcom/android/settings/fingerprint/G;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/J;->acx:Lcom/android/settings/fingerprint/G;

    invoke-static {v0}, Lcom/android/settings/fingerprint/G;->b(Lcom/android/settings/fingerprint/G;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 588
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/J;->acx:Lcom/android/settings/fingerprint/G;

    invoke-static {v1}, Lcom/android/settings/fingerprint/G;->a(Lcom/android/settings/fingerprint/G;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v0, p0, Lcom/android/settings/fingerprint/J;->acx:Lcom/android/settings/fingerprint/G;

    invoke-static {v0}, Lcom/android/settings/fingerprint/G;->d(Lcom/android/settings/fingerprint/G;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    .line 590
    iget-object v0, p0, Lcom/android/settings/fingerprint/J;->acx:Lcom/android/settings/fingerprint/G;

    invoke-static {v0}, Lcom/android/settings/fingerprint/G;->a(Lcom/android/settings/fingerprint/G;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 594
    :goto_1
    return-void

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/J;->acx:Lcom/android/settings/fingerprint/G;

    invoke-static {v0}, Lcom/android/settings/fingerprint/G;->c(Lcom/android/settings/fingerprint/G;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/J;->acx:Lcom/android/settings/fingerprint/G;

    invoke-static {v0}, Lcom/android/settings/fingerprint/G;->a(Lcom/android/settings/fingerprint/G;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/J;->acx:Lcom/android/settings/fingerprint/G;

    invoke-static {v1}, Lcom/android/settings/fingerprint/G;->e(Lcom/android/settings/fingerprint/G;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/J;->acx:Lcom/android/settings/fingerprint/G;

    invoke-static {v2}, Lcom/android/settings/fingerprint/G;->f(Lcom/android/settings/fingerprint/G;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_1
.end method
