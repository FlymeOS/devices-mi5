.class Lcom/android/vendorsettings/fingerprint/e;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic abK:Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/vendorsettings/fingerprint/e;->abK:Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/e;->abK:Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->i(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    return-void
.end method
