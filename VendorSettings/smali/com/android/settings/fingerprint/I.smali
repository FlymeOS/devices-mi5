.class Lcom/android/settings/fingerprint/I;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic acx:Lcom/android/settings/fingerprint/G;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/G;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/settings/fingerprint/I;->acx:Lcom/android/settings/fingerprint/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/settings/fingerprint/I;->acx:Lcom/android/settings/fingerprint/G;

    invoke-static {v0}, Lcom/android/settings/fingerprint/G;->a(Lcom/android/settings/fingerprint/G;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 559
    iget-object v0, p0, Lcom/android/settings/fingerprint/I;->acx:Lcom/android/settings/fingerprint/G;

    invoke-static {v0}, Lcom/android/settings/fingerprint/G;->b(Lcom/android/settings/fingerprint/G;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 560
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 562
    const-string v2, "FingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rename "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v0, p0, Lcom/android/settings/fingerprint/I;->acx:Lcom/android/settings/fingerprint/G;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/G;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fingerprint/x;

    .line 567
    iget-object v2, p0, Lcom/android/settings/fingerprint/I;->acx:Lcom/android/settings/fingerprint/G;

    invoke-static {v2}, Lcom/android/settings/fingerprint/G;->b(Lcom/android/settings/fingerprint/G;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/android/settings/fingerprint/x;->a(Lcom/android/settings/fingerprint/x;ILjava/lang/String;)V

    .line 570
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 571
    return-void
.end method
