.class Lcom/android/settings/fingerprint/m;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic abN:Lcom/android/settings/fingerprint/l;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/l;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/settings/fingerprint/m;->abN:Lcom/android/settings/fingerprint/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 394
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 395
    return-void
.end method
