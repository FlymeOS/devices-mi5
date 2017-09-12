.class public Lmiui/telephony/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/SmsManager$1;,
        Lmiui/telephony/SmsManager$Holder;
    }
.end annotation


# static fields
.field private static final INVALID_SIM_SLOT_INDEX:I = -0x1


# instance fields
.field private mSlotId:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lmiui/telephony/SmsManager;->mSlotId:I

    .line 40
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lmiui/telephony/SmsManager;->mSlotId:I

    .line 43
    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iput p1, p0, Lmiui/telephony/SmsManager;->mSlotId:I

    .line 46
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(ILmiui/telephony/SmsManager$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lmiui/telephony/SmsManager$1;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lmiui/telephony/SmsManager;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/telephony/SmsManager$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/telephony/SmsManager$1;

    .prologue
    .line 9
    invoke-direct {p0}, Lmiui/telephony/SmsManager;-><init>()V

    return-void
.end method

.method public static getDefault()Lmiui/telephony/SmsManager;
    .locals 1

    .prologue
    .line 25
    # getter for: Lmiui/telephony/SmsManager$Holder;->sDefaultInstance:Lmiui/telephony/SmsManager;
    invoke-static {}, Lmiui/telephony/SmsManager$Holder;->access$200()Lmiui/telephony/SmsManager;

    move-result-object v0

    return-object v0
.end method

.method public static getDefault(I)Lmiui/telephony/SmsManager;
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 29
    invoke-static {p0}, Lmiui/telephony/SubscriptionManager;->isRealSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    # getter for: Lmiui/telephony/SmsManager$Holder;->sInstance:[Lmiui/telephony/SmsManager;
    invoke-static {}, Lmiui/telephony/SmsManager$Holder;->access$300()[Lmiui/telephony/SmsManager;

    move-result-object v0

    aget-object v0, v0, p0

    .line 32
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lmiui/telephony/SmsManager;->getDefault()Lmiui/telephony/SmsManager;

    move-result-object v0

    goto :goto_0
.end method

.method private getSmsManager()Landroid/telephony/SmsManager;
    .locals 2

    .prologue
    .line 86
    iget v0, p0, Lmiui/telephony/SmsManager;->mSlotId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 87
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    iget v1, p0, Lmiui/telephony/SmsManager;->mSlotId:I

    invoke-virtual {v0, v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public copyMessageToIcc([B[BI)Z
    .locals 1
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Lmiui/telephony/SmsManager;->getSmsManager()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result v0

    return v0
.end method

.method public deleteMessageFromIcc(I)Z
    .locals 1
    .param p1, "messageIndex"    # I

    .prologue
    .line 78
    invoke-direct {p0}, Lmiui/telephony/SmsManager;->getSmsManager()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SmsManager;->deleteMessageFromIcc(I)Z

    move-result v0

    return v0
.end method

.method public divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Lmiui/telephony/SmsManager;->getSmsManager()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllMessagesFromIcc()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Lmiui/telephony/SmsManager;->getSmsManager()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getAllMessagesFromIcc()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct {p0}, Lmiui/telephony/SmsManager;->getSmsManager()Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 57
    return-void
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZI)V
    .locals 6
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "priority"    # I
    .param p7, "isExpectMore"    # Z
    .param p8, "validityPeriod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;IZI)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct {p0}, Lmiui/telephony/SmsManager;->getSmsManager()Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 65
    return-void
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 69
    invoke-direct {p0}, Lmiui/telephony/SmsManager;->getSmsManager()Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 71
    return-void
.end method
