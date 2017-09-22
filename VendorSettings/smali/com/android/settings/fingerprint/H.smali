.class Lcom/android/vendorsettings/fingerprint/H;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic acx:Lcom/android/vendorsettings/fingerprint/G;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/fingerprint/G;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/android/vendorsettings/fingerprint/H;->acx:Lcom/android/vendorsettings/fingerprint/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/H;->acx:Lcom/android/vendorsettings/fingerprint/G;

    invoke-static {v0, p1}, Lcom/android/vendorsettings/fingerprint/G;->a(Lcom/android/vendorsettings/fingerprint/G;Landroid/content/DialogInterface;)V

    .line 579
    return-void
.end method
