.class public Lcom/android/settings/backup/i;
.super Ljava/lang/Object;
.source "RingtoneDescript.java"


# instance fields
.field public PN:Ljava/lang/String;

.field public PO:Ljava/lang/String;

.field public PP:Ljava/lang/String;

.field public PQ:Ljava/lang/String;

.field public PR:Ljava/lang/String;

.field public PS:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/settings/backup/i;->PN:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/android/settings/backup/i;->PO:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/android/settings/backup/i;->PP:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/android/settings/backup/i;->PQ:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/android/settings/backup/i;->PR:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method protected a(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2

    .prologue
    .line 54
    const-string v0, "ringtone"

    iget-object v1, p0, Lcom/android/settings/backup/i;->PN:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/backup/i;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v0, "notification"

    iget-object v1, p0, Lcom/android/settings/backup/i;->PO:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/backup/i;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v0, "alarm"

    iget-object v1, p0, Lcom/android/settings/backup/i;->PP:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/backup/i;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v0, "sms"

    iget-object v1, p0, Lcom/android/settings/backup/i;->PQ:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/backup/i;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "sms_received"

    iget-object v1, p0, Lcom/android/settings/backup/i;->PR:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/backup/i;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method protected a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 94
    if-nez p3, :cond_0

    .line 95
    const-string p3, ""

    .line 97
    :cond_0
    const-string v0, ""

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 98
    invoke-interface {p1, p3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    const-string v0, ""

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    return-void
.end method

.method public c(Ljava/io/File;)V
    .locals 6

    .prologue
    .line 62
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 63
    const/4 v1, 0x0

    .line 64
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 66
    :try_start_0
    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 68
    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 70
    const-string v3, ""

    const-string v4, "MIUI-backup"

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/settings/backup/i;->a(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 72
    const-string v3, ""

    const-string v4, "MIUI-backup"

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 74
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    iput-object p1, p0, Lcom/android/settings/backup/i;->PS:Ljava/io/File;

    .line 76
    iget-object v0, p0, Lcom/android/settings/backup/i;->PS:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 77
    new-instance v0, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/android/settings/backup/i;->PS:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    if-eqz v0, :cond_0

    .line 85
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 83
    :goto_1
    if-eqz v0, :cond_0

    .line 85
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 86
    :catch_1
    move-exception v0

    goto :goto_0

    .line 80
    :catch_2
    move-exception v0

    .line 83
    :goto_2
    if-eqz v1, :cond_0

    .line 85
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 86
    :catch_3
    move-exception v0

    goto :goto_0

    .line 81
    :catch_4
    move-exception v0

    .line 83
    :goto_3
    if-eqz v1, :cond_0

    .line 85
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_0

    .line 86
    :catch_5
    move-exception v0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_1

    .line 85
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 87
    :cond_1
    :goto_5
    throw v0

    .line 86
    :catch_6
    move-exception v0

    goto :goto_0

    :catch_7
    move-exception v1

    goto :goto_5

    .line 83
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    .line 81
    :catch_8
    move-exception v1

    move-object v1, v0

    goto :goto_3

    .line 80
    :catch_9
    move-exception v1

    move-object v1, v0

    goto :goto_2

    .line 79
    :catch_a
    move-exception v1

    goto :goto_1
.end method

.method public d(Ljava/io/File;)Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    iput-object p1, p0, Lcom/android/settings/backup/i;->PS:Ljava/io/File;

    .line 109
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 111
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 112
    const-string v4, "UTF-8"

    invoke-interface {v5, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    move v4, v0

    .line 114
    :goto_1
    if-eq v4, v1, :cond_3

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    .line 115
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_1

    .line 123
    :cond_2
    const/4 v6, 0x3

    if-ne v4, v6, :cond_5

    .line 119
    :cond_3
    :goto_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    .line 120
    if-ne v4, v1, :cond_2

    .line 137
    if-eqz v2, :cond_4

    .line 139
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_4
    :goto_3
    move v0, v1

    .line 141
    goto :goto_0

    .line 126
    :cond_5
    const/4 v6, 0x4

    if-ne v4, v6, :cond_6

    .line 127
    :try_start_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-virtual {p0, v3, v4}, Lcom/android/settings/backup/i;->p(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 134
    :catch_0
    move-exception v1

    move-object v1, v2

    .line 137
    :goto_4
    if-eqz v1, :cond_0

    .line 139
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 140
    :catch_1
    move-exception v1

    goto :goto_0

    .line 130
    :cond_6
    :try_start_5
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v3

    goto :goto_2

    .line 135
    :catch_2
    move-exception v1

    move-object v2, v3

    .line 137
    :goto_5
    if-eqz v2, :cond_0

    .line 139
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 140
    :catch_3
    move-exception v1

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_6
    if-eqz v2, :cond_7

    .line 139
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 141
    :cond_7
    :goto_7
    throw v0

    .line 140
    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_7

    .line 137
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 135
    :catch_6
    move-exception v1

    goto :goto_5

    .line 134
    :catch_7
    move-exception v1

    move-object v1, v3

    goto :goto_4
.end method

.method protected p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    const-string v0, "ringtone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iput-object p2, p0, Lcom/android/settings/backup/i;->PN:Ljava/lang/String;

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    const-string v0, "notification"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    iput-object p2, p0, Lcom/android/settings/backup/i;->PO:Ljava/lang/String;

    goto :goto_0

    .line 43
    :cond_2
    const-string v0, "alarm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    iput-object p2, p0, Lcom/android/settings/backup/i;->PP:Ljava/lang/String;

    goto :goto_0

    .line 45
    :cond_3
    const-string v0, "sms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 46
    iput-object p2, p0, Lcom/android/settings/backup/i;->PQ:Ljava/lang/String;

    goto :goto_0

    .line 47
    :cond_4
    const-string v0, "sms_received"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iput-object p2, p0, Lcom/android/settings/backup/i;->PR:Ljava/lang/String;

    goto :goto_0
.end method
