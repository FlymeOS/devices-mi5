.class Lcom/android/camera/CameraDataAnalytics$RuleParser;
.super Ljava/lang/Object;
.source "CameraDataAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraDataAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RuleParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraDataAnalytics;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraDataAnalytics;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/camera/CameraDataAnalytics$RuleParser;->this$0:Lcom/android/camera/CameraDataAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraDataAnalytics;Lcom/android/camera/CameraDataAnalytics$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/CameraDataAnalytics;
    .param p2, "x1"    # Lcom/android/camera/CameraDataAnalytics$1;

    .prologue
    .line 541
    invoke-direct {p0, p1}, Lcom/android/camera/CameraDataAnalytics$RuleParser;-><init>(Lcom/android/camera/CameraDataAnalytics;)V

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/CameraDataAnalytics$Rule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x1

    .line 549
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .local v5, "ruleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/CameraDataAnalytics$Rule;>;"
    const/4 v4, 0x0

    .line 551
    .local v4, "rule":Lcom/android/camera/CameraDataAnalytics$Rule;
    const/4 v0, 0x0

    .line 553
    .local v0, "event":Lcom/android/camera/CameraDataAnalytics$Event;
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 554
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2, v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 555
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 556
    .local v6, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v7, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v7}, Landroid/util/Xml$Encoding;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 558
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 559
    .local v1, "eventType":I
    :goto_0
    if-eq v1, v8, :cond_6

    .line 560
    const/4 v7, 0x2

    if-ne v1, v7, :cond_2

    .line 561
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 562
    .local v3, "name":Ljava/lang/String;
    const-string v7, "rule"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 563
    new-instance v4, Lcom/android/camera/CameraDataAnalytics$Rule;

    .end local v4    # "rule":Lcom/android/camera/CameraDataAnalytics$Rule;
    iget-object v7, p0, Lcom/android/camera/CameraDataAnalytics$RuleParser;->this$0:Lcom/android/camera/CameraDataAnalytics;

    const-string v10, "name"

    invoke-interface {v6, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v7, v10}, Lcom/android/camera/CameraDataAnalytics$Rule;-><init>(Lcom/android/camera/CameraDataAnalytics;Ljava/lang/String;)V

    .line 576
    .end local v3    # "name":Ljava/lang/String;
    .restart local v4    # "rule":Lcom/android/camera/CameraDataAnalytics$Rule;
    :cond_0
    :goto_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 564
    .restart local v3    # "name":Ljava/lang/String;
    :cond_1
    const-string v7, "event"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 565
    new-instance v0, Lcom/android/camera/CameraDataAnalytics$Event;

    .end local v0    # "event":Lcom/android/camera/CameraDataAnalytics$Event;
    iget-object v7, p0, Lcom/android/camera/CameraDataAnalytics$RuleParser;->this$0:Lcom/android/camera/CameraDataAnalytics;

    const-string v10, "key"

    invoke-interface {v6, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "name"

    invoke-interface {v6, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v7, v10, v11}, Lcom/android/camera/CameraDataAnalytics$Event;-><init>(Lcom/android/camera/CameraDataAnalytics;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "event":Lcom/android/camera/CameraDataAnalytics$Event;
    goto :goto_1

    .line 568
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x3

    if-ne v1, v7, :cond_0

    .line 569
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 570
    .restart local v3    # "name":Ljava/lang/String;
    const-string v7, "rule"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v4, :cond_3

    .line 571
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 572
    :cond_3
    const-string v7, "event"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v4, :cond_4

    move v10, v8

    :goto_2
    if-eqz v0, :cond_5

    move v7, v8

    :goto_3
    and-int/2addr v7, v10

    if-eqz v7, :cond_0

    .line 573
    iget-object v7, v4, Lcom/android/camera/CameraDataAnalytics$Rule;->eventList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move v10, v9

    .line 572
    goto :goto_2

    :cond_5
    move v7, v9

    goto :goto_3

    .line 578
    .end local v3    # "name":Ljava/lang/String;
    :cond_6
    return-object v5
.end method
