.class Lcom/android/settings/fingerprint/g;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic abK:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/settings/fingerprint/g;->abK:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/settings/fingerprint/g;->abK:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    iget-object v1, p0, Lcom/android/settings/fingerprint/g;->abK:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->abp:[B

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->a(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;[B)V

    .line 348
    return-void
.end method
