.class Lcom/android/settings/fingerprint/C;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic acr:Lcom/android/settings/fingerprint/x;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/x;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/settings/fingerprint/C;->acr:Lcom/android/settings/fingerprint/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/settings/fingerprint/C;->acr:Lcom/android/settings/fingerprint/x;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/x;->a(Lcom/android/settings/fingerprint/x;Z)Z

    .line 529
    iget-object v0, p0, Lcom/android/settings/fingerprint/C;->acr:Lcom/android/settings/fingerprint/x;

    invoke-static {v0}, Lcom/android/settings/fingerprint/x;->c(Lcom/android/settings/fingerprint/x;)V

    .line 530
    return-void
.end method
