.class public Lcom/android/internal/telephony/gsm/GSMPhoneInjector;
.super Ljava/lang/Object;
.source "GSMPhoneInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLivetalk(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Landroid/os/Bundle;)Z
    .locals 6
    .param p0, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p1, "dialString"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/GSMPhone;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/UiccCardApplication;",
            ">;",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .local p2, "uiccApplication":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/android/internal/telephony/uicc/UiccCardApplication;>;"
    const/4 v5, 0x0

    .line 18
    if-eqz p3, :cond_1

    const-string v4, "isLivetalk"

    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 20
    .local v0, "isLivetalk":Z
    :goto_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 22
    .local v3, "newDialString":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 28
    :cond_0
    :goto_1
    return v5

    .end local v0    # "isLivetalk":Z
    .end local v3    # "newDialString":Ljava/lang/String;
    :cond_1
    move v0, v5

    .line 18
    goto :goto_0

    .line 26
    .restart local v0    # "isLivetalk":Z
    .restart local v3    # "newDialString":Ljava/lang/String;
    :cond_2
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, "networkPortion":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {v2, p0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v1

    .line 28
    .local v1, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    goto :goto_1
.end method
