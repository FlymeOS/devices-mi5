.class Lcom/android/vendorsettings/fM;
.super Ljava/lang/Object;
.source "NewFingerprintInternalActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic vd:Lcom/android/vendorsettings/fL;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/fL;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/vendorsettings/fM;->vd:Lcom/android/vendorsettings/fL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/vendorsettings/fM;->vd:Lcom/android/vendorsettings/fL;

    iget-object v0, v0, Lcom/android/vendorsettings/fL;->vb:Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->g(Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c1115

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 306
    iget-object v0, p0, Lcom/android/vendorsettings/fM;->vd:Lcom/android/vendorsettings/fL;

    iget-object v0, v0, Lcom/android/vendorsettings/fL;->vb:Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->h(Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c1116

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 307
    iget-object v0, p0, Lcom/android/vendorsettings/fM;->vd:Lcom/android/vendorsettings/fL;

    iget-object v0, v0, Lcom/android/vendorsettings/fL;->vb:Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->i(Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/android/vendorsettings/fM;->vd:Lcom/android/vendorsettings/fL;

    iget-object v0, v0, Lcom/android/vendorsettings/fL;->vb:Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->j(Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/android/vendorsettings/fM;->vd:Lcom/android/vendorsettings/fL;

    iget-object v0, v0, Lcom/android/vendorsettings/fL;->vb:Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 310
    return-void
.end method
