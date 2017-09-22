.class Lcom/android/vendorsettings/fingerprint/p;
.super Ljava/lang/Object;
.source "FingerprintEnrollSidecar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic abY:Lcom/android/vendorsettings/fingerprint/n;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/fingerprint/n;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/vendorsettings/fingerprint/p;->abY:Lcom/android/vendorsettings/fingerprint/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/p;->abY:Lcom/android/vendorsettings/fingerprint/n;

    invoke-static {v0}, Lcom/android/vendorsettings/fingerprint/n;->c(Lcom/android/vendorsettings/fingerprint/n;)V

    .line 140
    return-void
.end method
