.class Lcom/android/vendorsettings/fingerprint/L;
.super Ljava/lang/Object;
.source "FingerprintUiHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic acD:Lcom/android/vendorsettings/fingerprint/K;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/fingerprint/K;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/vendorsettings/fingerprint/L;->acD:Lcom/android/vendorsettings/fingerprint/K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/L;->acD:Lcom/android/vendorsettings/fingerprint/K;

    invoke-static {v0}, Lcom/android/vendorsettings/fingerprint/K;->a(Lcom/android/vendorsettings/fingerprint/K;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/L;->acD:Lcom/android/vendorsettings/fingerprint/K;

    invoke-static {v0}, Lcom/android/vendorsettings/fingerprint/K;->b(Lcom/android/vendorsettings/fingerprint/K;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020110

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    return-void
.end method
