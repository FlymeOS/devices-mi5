.class Lcom/android/vendorsettings/fingerprint/E;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic act:Lcom/android/vendorsettings/fingerprint/D;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/fingerprint/D;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lcom/android/vendorsettings/fingerprint/E;->act:Lcom/android/vendorsettings/fingerprint/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 659
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 660
    return-void
.end method