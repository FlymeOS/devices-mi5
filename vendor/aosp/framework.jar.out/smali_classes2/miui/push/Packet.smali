.class public abstract Lmiui/push/Packet;
.super Ljava/lang/Object;
.source "Packet.java"


# static fields
.field protected static final DEFAULT_LANGUAGE:Ljava/lang/String;

.field private static DEFAULT_XML_NS:Ljava/lang/String; = null

.field public static final ID_NOT_AVAILABLE:Ljava/lang/String; = "ID_NOT_AVAILABLE"

.field public static final XEP_0082_UTC_FORMAT:Ljava/text/DateFormat;

.field private static id:J

.field private static prefix:Ljava/lang/String;


# instance fields
.field private chId:Ljava/lang/String;

.field private error:Lmiui/push/XMPPError;

.field private from:Ljava/lang/String;

.field private packetExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/push/CommonPacketExtension;",
            ">;"
        }
    .end annotation
.end field

.field private packetID:Ljava/lang/String;

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private to:Ljava/lang/String;

.field private xmlns:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/push/Packet;->DEFAULT_LANGUAGE:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lmiui/push/Packet;->DEFAULT_XML_NS:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/Packet;->XEP_0082_UTC_FORMAT:Ljava/text/DateFormat;

    .line 79
    sget-object v0, Lmiui/push/Packet;->XEP_0082_UTC_FORMAT:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Lmiui/push/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/push/Packet;->prefix:Ljava/lang/String;

    .line 92
    const-wide/16 v0, 0x0

    sput-wide v0, Lmiui/push/Packet;->id:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    sget-object v0, Lmiui/push/Packet;->DEFAULT_XML_NS:Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    .line 98
    iput-object v1, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    .line 100
    iput-object v1, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    .line 102
    iput-object v1, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    .line 108
    iput-object v1, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    sget-object v8, Lmiui/push/Packet;->DEFAULT_XML_NS:Ljava/lang/String;

    iput-object v8, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    .line 96
    iput-object v9, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    .line 98
    iput-object v9, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    .line 100
    iput-object v9, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    .line 102
    iput-object v9, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    .line 104
    new-instance v8, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v8, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    .line 106
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    .line 108
    iput-object v9, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    .line 128
    const-string v8, "ext_to"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    .line 129
    const-string v8, "ext_from"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    .line 130
    const-string v8, "ext_chid"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    .line 131
    const-string v8, "ext_pkt_id"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    .line 132
    const-string v8, "ext_exts"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 133
    .local v4, "extBundles":[Landroid/os/Parcelable;
    if-eqz v4, :cond_1

    .line 134
    new-instance v8, Ljava/util/ArrayList;

    array-length v9, v4

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    .line 135
    move-object v0, v4

    .local v0, "arr$":[Landroid/os/Parcelable;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v7, v0, v5

    .local v7, "p":Landroid/os/Parcelable;
    move-object v1, v7

    .line 136
    check-cast v1, Landroid/os/Bundle;

    .line 137
    .local v1, "bund":Landroid/os/Bundle;
    invoke-static {v1}, Lmiui/push/CommonPacketExtension;->parseFromBundle(Landroid/os/Bundle;)Lmiui/push/CommonPacketExtension;

    move-result-object v3

    .line 138
    .local v3, "ext":Lmiui/push/CommonPacketExtension;
    if-eqz v3, :cond_0

    .line 139
    iget-object v8, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "arr$":[Landroid/os/Parcelable;
    .end local v1    # "bund":Landroid/os/Bundle;
    .end local v3    # "ext":Lmiui/push/CommonPacketExtension;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "p":Landroid/os/Parcelable;
    :cond_1
    const-string v8, "ext_ERROR"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 144
    .local v2, "errBundle":Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 145
    new-instance v8, Lmiui/push/XMPPError;

    invoke-direct {v8, v2}, Lmiui/push/XMPPError;-><init>(Landroid/os/Bundle;)V

    iput-object v8, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    .line 147
    :cond_2
    return-void
.end method

.method public static getDefaultLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    sget-object v0, Lmiui/push/Packet;->DEFAULT_LANGUAGE:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized nextID()Ljava/lang/String;
    .locals 6

    .prologue
    .line 117
    const-class v1, Lmiui/push/Packet;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmiui/push/Packet;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lmiui/push/Packet;->id:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lmiui/push/Packet;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setDefaultXmlns(Ljava/lang/String;)V
    .locals 0
    .param p0, "defaultXmlns"    # Ljava/lang/String;

    .prologue
    .line 121
    sput-object p0, Lmiui/push/Packet;->DEFAULT_XML_NS:Ljava/lang/String;

    .line 122
    return-void
.end method


# virtual methods
.method public addExtension(Lmiui/push/CommonPacketExtension;)V
    .locals 1
    .param p1, "extension"    # Lmiui/push/CommonPacketExtension;

    .prologue
    .line 318
    iget-object v0, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    return-void
.end method

.method public declared-synchronized deleteProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 366
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 370
    :goto_0
    monitor-exit p0

    return-void

    .line 369
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 523
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 551
    :cond_0
    :goto_0
    return v2

    .line 525
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 528
    check-cast v0, Lmiui/push/Packet;

    .line 530
    .local v0, "packet":Lmiui/push/Packet;
    iget-object v3, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    iget-object v4, v0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 533
    :cond_2
    iget-object v3, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Packet;->from:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 536
    :cond_3
    iget-object v3, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    iget-object v4, v0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 539
    iget-object v3, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 542
    :cond_4
    iget-object v3, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 545
    :cond_5
    iget-object v3, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    iget-object v4, v0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 548
    :cond_6
    iget-object v3, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Packet;->to:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 551
    :cond_7
    iget-object v3, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    move v1, v2

    :cond_9
    :goto_1
    move v2, v1

    goto :goto_0

    .line 530
    :cond_a
    iget-object v3, v0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    if-eqz v3, :cond_2

    goto/16 :goto_0

    .line 533
    :cond_b
    iget-object v3, v0, Lmiui/push/Packet;->from:Ljava/lang/String;

    if-eqz v3, :cond_3

    goto/16 :goto_0

    .line 539
    :cond_c
    iget-object v3, v0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto/16 :goto_0

    .line 542
    :cond_d
    iget-object v3, v0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    if-eqz v3, :cond_5

    goto/16 :goto_0

    .line 545
    :cond_e
    iget-object v3, v0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    if-eqz v3, :cond_6

    goto/16 :goto_0

    .line 548
    :cond_f
    iget-object v3, v0, Lmiui/push/Packet;->to:Ljava/lang/String;

    if-eqz v3, :cond_7

    goto/16 :goto_0

    .line 551
    :cond_10
    iget-object v3, v0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    if-nez v3, :cond_8

    goto :goto_1
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Lmiui/push/XMPPError;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    return-object v0
.end method

.method public getExtension(Ljava/lang/String;)Lmiui/push/CommonPacketExtension;
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/push/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lmiui/push/CommonPacketExtension;

    move-result-object v0

    return-object v0
.end method

.method public getExtension(Ljava/lang/String;Ljava/lang/String;)Lmiui/push/CommonPacketExtension;
    .locals 3
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    .prologue
    .line 303
    iget-object v2, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/push/CommonPacketExtension;

    .line 304
    .local v0, "ext":Lmiui/push/CommonPacketExtension;
    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lmiui/push/CommonPacketExtension;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-virtual {v0}, Lmiui/push/CommonPacketExtension;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    .end local v0    # "ext":Lmiui/push/CommonPacketExtension;
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getExtensions()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lmiui/push/CommonPacketExtension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 270
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 272
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getExtensionsXML()Ljava/lang/String;
    .locals 13

    .prologue
    .line 444
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lmiui/push/Packet;->getExtensions()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/push/PacketExtension;

    .line 447
    .local v5, "extension":Lmiui/push/PacketExtension;
    invoke-interface {v5}, Lmiui/push/PacketExtension;->toXML()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 444
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v5    # "extension":Lmiui/push/PacketExtension;
    .end local v6    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 450
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v11, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    if-eqz v11, :cond_d

    iget-object v11, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_d

    .line 451
    const-string v11, "<properties xmlns=\"http://www.jivesoftware.com/xmlns/xmpp/properties\">"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {p0}, Lmiui/push/Packet;->getPropertyNames()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 454
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lmiui/push/Packet;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 455
    .local v10, "value":Ljava/lang/Object;
    const-string v11, "<property>"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    const-string v11, "<name>"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v7}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</name>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string v11, "<value type=\""

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    instance-of v11, v10, Ljava/lang/Integer;

    if-eqz v11, :cond_2

    .line 459
    const-string v11, "integer\">"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</value>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .end local v10    # "value":Ljava/lang/Object;
    :cond_1
    :goto_2
    const-string v11, "</property>"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 460
    .restart local v10    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v11, v10, Ljava/lang/Long;

    if-eqz v11, :cond_3

    .line 461
    const-string v11, "long\">"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</value>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 462
    :cond_3
    instance-of v11, v10, Ljava/lang/Float;

    if-eqz v11, :cond_4

    .line 463
    const-string v11, "float\">"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</value>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 464
    :cond_4
    instance-of v11, v10, Ljava/lang/Double;

    if-eqz v11, :cond_5

    .line 465
    const-string v11, "double\">"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</value>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 466
    :cond_5
    instance-of v11, v10, Ljava/lang/Boolean;

    if-eqz v11, :cond_6

    .line 467
    const-string v11, "boolean\">"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</value>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 468
    :cond_6
    instance-of v11, v10, Ljava/lang/String;

    if-eqz v11, :cond_7

    .line 469
    const-string v11, "string\">"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    check-cast v10, Ljava/lang/String;

    .end local v10    # "value":Ljava/lang/Object;
    invoke-static {v10}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const-string v11, "</value>"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 479
    .restart local v10    # "value":Ljava/lang/Object;
    :cond_7
    const/4 v1, 0x0

    .line 480
    .local v1, "byteStream":Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x0

    .line 482
    .local v8, "out":Ljava/io/ObjectOutputStream;
    :try_start_2
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 483
    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .local v2, "byteStream":Ljava/io/ByteArrayOutputStream;
    :try_start_3
    new-instance v9, Ljava/io/ObjectOutputStream;

    invoke-direct {v9, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 484
    .end local v8    # "out":Ljava/io/ObjectOutputStream;
    .local v9, "out":Ljava/io/ObjectOutputStream;
    :try_start_4
    invoke-virtual {v9, v10}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 485
    const-string v11, "java-object\">"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-static {v11}, Lmiui/push/StringUtils;->encodeBase64([B)Ljava/lang/String;

    move-result-object v4

    .line 487
    .local v4, "encodedVal":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</value>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 491
    if-eqz v9, :cond_8

    .line 493
    :try_start_5
    invoke-virtual {v9}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 498
    :cond_8
    :goto_3
    if-eqz v2, :cond_1

    .line 500
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 501
    :catch_0
    move-exception v11

    goto/16 :goto_2

    .line 488
    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "encodedVal":Ljava/lang/String;
    .end local v9    # "out":Ljava/io/ObjectOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "out":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v3

    .line 489
    .local v3, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 491
    if-eqz v8, :cond_9

    .line 493
    :try_start_8
    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 498
    :cond_9
    :goto_5
    if-eqz v1, :cond_1

    .line 500
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 501
    :catch_2
    move-exception v11

    goto/16 :goto_2

    .line 491
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v11

    :goto_6
    if-eqz v8, :cond_a

    .line 493
    :try_start_a
    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 498
    :cond_a
    :goto_7
    if-eqz v1, :cond_b

    .line 500
    :try_start_b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 503
    :cond_b
    :goto_8
    :try_start_c
    throw v11

    .line 509
    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "out":Ljava/io/ObjectOutputStream;
    .end local v10    # "value":Ljava/lang/Object;
    :cond_c
    const-string v11, "</properties>"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v11

    monitor-exit p0

    return-object v11

    .line 494
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "encodedVal":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v9    # "out":Ljava/io/ObjectOutputStream;
    .restart local v10    # "value":Ljava/lang/Object;
    :catch_3
    move-exception v11

    goto :goto_3

    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "encodedVal":Ljava/lang/String;
    .end local v9    # "out":Ljava/io/ObjectOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "e":Ljava/lang/Exception;
    .restart local v8    # "out":Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v11

    goto :goto_5

    .end local v3    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v12

    goto :goto_7

    .line 501
    :catch_6
    move-exception v12

    goto :goto_8

    .line 491
    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v11

    move-object v1, v2

    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "out":Ljava/io/ObjectOutputStream;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "out":Ljava/io/ObjectOutputStream;
    :catchall_3
    move-exception v11

    move-object v8, v9

    .end local v9    # "out":Ljava/io/ObjectOutputStream;
    .restart local v8    # "out":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .line 488
    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "out":Ljava/io/ObjectOutputStream;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "out":Ljava/io/ObjectOutputStream;
    :catch_8
    move-exception v3

    move-object v8, v9

    .end local v9    # "out":Ljava/io/ObjectOutputStream;
    .restart local v8    # "out":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_4
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getPacketID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    const-string v0, "ID_NOT_AVAILABLE"

    iget-object v1, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const/4 v0, 0x0

    .line 164
    :goto_0
    return-object v0

    .line 161
    :cond_0
    iget-object v0, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 162
    invoke-static {}, Lmiui/push/Packet;->nextID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    .line 164
    :cond_1
    iget-object v0, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    goto :goto_0
.end method

.method public declared-synchronized getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 341
    const/4 v0, 0x0

    .line 343
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPropertyNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 380
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 382
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlns()Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 556
    iget-object v2, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 557
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 558
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 559
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 560
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 561
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 562
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 563
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 564
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 556
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 557
    goto :goto_1

    :cond_3
    move v2, v1

    .line 558
    goto :goto_2

    :cond_4
    move v2, v1

    .line 559
    goto :goto_3

    :cond_5
    move v2, v1

    .line 560
    goto :goto_4
.end method

.method public removeExtension(Lmiui/push/CommonPacketExtension;)V
    .locals 1
    .param p1, "extension"    # Lmiui/push/CommonPacketExtension;

    .prologue
    .line 327
    iget-object v0, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 328
    return-void
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setError(Lmiui/push/XMPPError;)V
    .locals 0
    .param p1, "error"    # Lmiui/push/XMPPError;

    .prologue
    .line 259
    iput-object p1, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    .line 260
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setPacketID(Ljava/lang/String;)V
    .locals 0
    .param p1, "packetID"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 354
    monitor-enter p0

    :try_start_0
    instance-of v0, p2, Ljava/io/Serializable;

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value must be serialiazble"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 357
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    monitor-exit p0

    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0
    .param p1, "to"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 9

    .prologue
    .line 403
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 404
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v7, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 405
    const-string v7, "ext_ns"

    iget-object v8, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_0
    iget-object v7, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 408
    const-string v7, "ext_from"

    iget-object v8, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_1
    iget-object v7, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 411
    const-string v7, "ext_to"

    iget-object v8, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_2
    iget-object v7, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 414
    const-string v7, "ext_pkt_id"

    iget-object v8, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_3
    iget-object v7, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 417
    const-string v7, "ext_chid"

    iget-object v8, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_4
    iget-object v7, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    if-eqz v7, :cond_5

    .line 420
    const-string v7, "ext_ERROR"

    iget-object v8, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    invoke-virtual {v8}, Lmiui/push/XMPPError;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 422
    :cond_5
    iget-object v7, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    if-eqz v7, :cond_8

    .line 423
    iget-object v7, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v2, v7, [Landroid/os/Bundle;

    .line 424
    .local v2, "extBundle":[Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 425
    .local v3, "i":I
    iget-object v7, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/push/CommonPacketExtension;

    .line 426
    .local v1, "ext":Lmiui/push/CommonPacketExtension;
    invoke-virtual {v1}, Lmiui/push/CommonPacketExtension;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 427
    .local v6, "subBundle":Landroid/os/Bundle;
    if-eqz v6, :cond_6

    .line 428
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aput-object v6, v2, v3

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 431
    .end local v1    # "ext":Lmiui/push/CommonPacketExtension;
    .end local v6    # "subBundle":Landroid/os/Bundle;
    :cond_7
    const-string v7, "ext_exts"

    invoke-virtual {v0, v7, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 433
    .end local v2    # "extBundle":[Landroid/os/Bundle;
    .end local v3    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_8
    return-object v0
.end method

.method public abstract toXML()Ljava/lang/String;
.end method
