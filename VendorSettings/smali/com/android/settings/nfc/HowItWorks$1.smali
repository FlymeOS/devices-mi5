.class Lcom/android/settings/nfc/HowItWorks$1;
.super Ljava/lang/Object;
.source "HowItWorks.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aie:Lcom/android/settings/nfc/HowItWorks;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/HowItWorks;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/android/settings/nfc/HowItWorks$1;->aie:Lcom/android/settings/nfc/HowItWorks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings/nfc/HowItWorks$1;->aie:Lcom/android/settings/nfc/HowItWorks;

    invoke-virtual {v0}, Lcom/android/settings/nfc/HowItWorks;->finish()V

    .line 21
    return-void
.end method
