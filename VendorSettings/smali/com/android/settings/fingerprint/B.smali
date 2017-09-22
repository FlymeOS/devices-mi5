.class Lcom/android/vendorsettings/fingerprint/B;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic acr:Lcom/android/vendorsettings/fingerprint/x;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/fingerprint/x;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/vendorsettings/fingerprint/B;->acr:Lcom/android/vendorsettings/fingerprint/x;

    iput-object p2, p0, Lcom/android/vendorsettings/fingerprint/B;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/B;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 492
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/B;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 493
    return-void
.end method
