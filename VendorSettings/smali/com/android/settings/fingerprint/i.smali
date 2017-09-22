.class Lcom/android/settings/fingerprint/i;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic abM:Lcom/android/settings/fingerprint/h;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/h;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/settings/fingerprint/i;->abM:Lcom/android/settings/fingerprint/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/settings/fingerprint/i;->abM:Lcom/android/settings/fingerprint/h;

    iget-object v0, v0, Lcom/android/settings/fingerprint/h;->abK:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->m(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    .line 364
    return-void
.end method
