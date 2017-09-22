.class Lcom/android/settings/nfc/PaymentBackend$1;
.super Landroid/os/Handler;
.source "PaymentBackend.java"


# instance fields
.field final synthetic aiw:Lcom/android/settings/nfc/PaymentBackend;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/PaymentBackend;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/settings/nfc/PaymentBackend$1;->aiw:Lcom/android/settings/nfc/PaymentBackend;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentBackend$1;->aiw:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->refresh()V

    .line 191
    return-void
.end method
