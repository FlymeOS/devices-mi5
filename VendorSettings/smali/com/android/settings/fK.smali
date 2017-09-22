.class Lcom/android/vendorsettings/fK;
.super Ljava/lang/Object;
.source "NewFingerprintInternalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic vb:Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/vendorsettings/fK;->vb:Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/vendorsettings/fK;->vb:Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 200
    iget-object v0, p0, Lcom/android/vendorsettings/fK;->vb:Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/NewFingerprintInternalActivity$NewFingerprintFragment;->finish()V

    .line 201
    return-void
.end method
