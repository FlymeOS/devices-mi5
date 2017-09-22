.class Lcom/android/settings/fingerprint/p;
.super Ljava/lang/Object;
.source "FingerprintEnrollSidecar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic abY:Lcom/android/settings/fingerprint/n;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/n;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings/fingerprint/p;->abY:Lcom/android/settings/fingerprint/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings/fingerprint/p;->abY:Lcom/android/settings/fingerprint/n;

    invoke-static {v0}, Lcom/android/settings/fingerprint/n;->c(Lcom/android/settings/fingerprint/n;)V

    .line 140
    return-void
.end method
