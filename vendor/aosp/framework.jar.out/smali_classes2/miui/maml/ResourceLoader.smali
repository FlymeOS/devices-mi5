.class public abstract Lmiui/maml/ResourceLoader;
.super Ljava/lang/Object;
.source "ResourceLoader.java"


# static fields
.field private static final CONFIG_FILE_NAME:Ljava/lang/String; = "config.xml"

.field private static final IMAGES_FOLDER_NAME:Ljava/lang/String; = "images"

.field private static final LOG_TAG:Ljava/lang/String; = "ResourceLoader"

.field private static final MANIFEST_FILE_NAME:Ljava/lang/String; = "manifest.xml"


# instance fields
.field protected mConfigName:Ljava/lang/String;

.field protected mLanguageCountrySuffix:Ljava/lang/String;

.field protected mLanguageSuffix:Ljava/lang/String;

.field protected mLocale:Ljava/util/Locale;

.field protected mManifestName:Ljava/lang/String;

.field private mThemeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "manifest.xml"

    iput-object v0, p0, Lmiui/maml/ResourceLoader;->mManifestName:Ljava/lang/String;

    .line 41
    const-string v0, "config.xml"

    iput-object v0, p0, Lmiui/maml/ResourceLoader;->mConfigName:Ljava/lang/String;

    return-void
.end method

.method private getPathForLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "folder"    # Ljava/lang/String;

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lmiui/maml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {p0, v0}, Lmiui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    .line 231
    .end local p1    # "src":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 218
    .restart local p1    # "src":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lmiui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-virtual {p0, v0}, Lmiui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p1, v0

    .line 222
    goto :goto_0

    .line 225
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {p0, v0}, Lmiui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p1, v0

    .line 228
    goto :goto_0

    .line 231
    :cond_3
    invoke-virtual {p0, p1}, Lmiui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0
.end method

.method private getXmlRoot(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 154
    invoke-virtual {p0, p1}, Lmiui/maml/ResourceLoader;->getPathForLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 155
    .local v5, "localePath":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lmiui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 156
    .local v4, "is":Ljava/io/InputStream;
    if-nez v4, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-object v6

    .line 160
    :cond_1
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 161
    .local v1, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 162
    .local v0, "db":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 163
    .local v2, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 175
    if-eqz v4, :cond_0

    .line 177
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v7

    goto :goto_0

    .line 164
    .end local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    :catch_1
    move-exception v3

    .line 165
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    const-string v7, "ResourceLoader"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    if-eqz v4, :cond_0

    .line 177
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 178
    :catch_2
    move-exception v7

    goto :goto_0

    .line 166
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 167
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    :try_start_4
    const-string v7, "ResourceLoader"

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 175
    if-eqz v4, :cond_0

    .line 177
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 178
    :catch_4
    move-exception v7

    goto :goto_0

    .line 168
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    :catch_5
    move-exception v3

    .line 169
    .local v3, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_6
    const-string v7, "ResourceLoader"

    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 175
    if-eqz v4, :cond_0

    .line 177
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_0

    .line 178
    :catch_6
    move-exception v7

    goto :goto_0

    .line 170
    .end local v3    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_7
    move-exception v3

    .line 171
    .local v3, "e":Lorg/xml/sax/SAXException;
    :try_start_8
    const-string v7, "ResourceLoader"

    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 175
    if-eqz v4, :cond_0

    .line 177
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_0

    .line 178
    :catch_8
    move-exception v7

    goto :goto_0

    .line 172
    .end local v3    # "e":Lorg/xml/sax/SAXException;
    :catch_9
    move-exception v3

    .line 173
    .local v3, "e":Ljava/lang/Exception;
    :try_start_a
    const-string v7, "ResourceLoader"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 175
    if-eqz v4, :cond_0

    .line 177
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_0

    .line 178
    :catch_a
    move-exception v7

    goto :goto_0

    .line 175
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_2

    .line 177
    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 179
    :cond_2
    :goto_1
    throw v6

    .line 178
    :catch_b
    move-exception v7

    goto :goto_1
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lmiui/maml/ResourceManager$BitmapInfo;
    .locals 9
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v5, 0x0

    .line 100
    const-string v6, "images"

    invoke-direct {p0, p1, v6}, Lmiui/maml/ResourceLoader;->getPathForLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "path":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 102
    const-string v6, "ResourceLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TRY AGAIN to get getPathForLanguage: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v6, "images"

    invoke-direct {p0, p1, v6}, Lmiui/maml/ResourceLoader;->getPathForLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 104
    if-nez v4, :cond_1

    .line 105
    const-string v6, "ResourceLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to get getPathForLanguage: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    :goto_0
    return-object v5

    .line 109
    :cond_1
    invoke-virtual {p0, v4}, Lmiui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 110
    .local v2, "is":Ljava/io/InputStream;
    if-nez v2, :cond_2

    .line 111
    const-string v6, "ResourceLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TRY AGAIN to get InputStream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0, v4}, Lmiui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 113
    if-nez v2, :cond_2

    .line 114
    const-string v6, "ResourceLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to get InputStream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :cond_2
    :try_start_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 121
    .local v3, "padding":Landroid/graphics/Rect;
    invoke-static {v2, v3, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_3

    .line 123
    const-string v6, "ResourceLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TRY AGAIN to decode bitmap: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {v2, v3, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 125
    if-nez v0, :cond_5

    .line 126
    const-string v6, "ResourceLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to decode bitmap: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    if-eqz v2, :cond_0

    .line 136
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 137
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 130
    :cond_3
    :try_start_2
    new-instance v6, Lmiui/maml/ResourceManager$BitmapInfo;

    invoke-direct {v6, v0, v3}, Lmiui/maml/ResourceManager$BitmapInfo;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    if-eqz v2, :cond_4

    .line 136
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_4
    :goto_1
    move-object v5, v6

    .line 138
    goto/16 :goto_0

    .line 134
    :cond_5
    if-eqz v2, :cond_0

    .line 136
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 137
    :catch_1
    move-exception v6

    goto/16 :goto_0

    .line 131
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "padding":Landroid/graphics/Rect;
    :catch_2
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_5
    const-string v6, "ResourceLoader"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 134
    if-eqz v2, :cond_0

    .line 136
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 137
    :catch_3
    move-exception v6

    goto/16 :goto_0

    .line 134
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_6

    .line 136
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 138
    :cond_6
    :goto_2
    throw v5

    .line 137
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v3    # "padding":Landroid/graphics/Rect;
    :catch_4
    move-exception v5

    goto :goto_1

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "padding":Landroid/graphics/Rect;
    :catch_5
    move-exception v6

    goto :goto_2
.end method

.method public getConfigRoot()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lmiui/maml/ResourceLoader;->mConfigName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmiui/maml/ResourceLoader;->getXmlRoot(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
    .locals 12
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 66
    const/4 v9, 0x1

    new-array v5, v9, [J

    .line 67
    .local v5, "olen":[J
    invoke-virtual {p0, p1, v5}, Lmiui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v3

    .line 68
    .local v3, "is":Ljava/io/InputStream;
    if-nez v3, :cond_1

    move-object v4, v8

    .line 96
    :cond_0
    :goto_0
    return-object v4

    .line 71
    :cond_1
    const/high16 v0, 0x10000

    .line 72
    .local v0, "COUNT":I
    const/high16 v9, 0x10000

    :try_start_0
    new-array v1, v9, [B

    .line 73
    .local v1, "buff":[B
    new-instance v4, Landroid/os/MemoryFile;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-wide v10, v5, v10

    long-to-int v10, v10

    invoke-direct {v4, v9, v10}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 74
    .local v4, "mf":Landroid/os/MemoryFile;
    const/4 v6, -0x1

    .line 75
    .local v6, "read":I
    const/4 v7, 0x0

    .line 76
    .local v7, "start":I
    :goto_1
    const/4 v9, 0x0

    const/high16 v10, 0x10000

    invoke-virtual {v3, v1, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-lez v6, :cond_2

    .line 77
    const/4 v9, 0x0

    invoke-virtual {v4, v1, v9, v7, v6}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 78
    add-int/2addr v7, v6

    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {v4}, Landroid/os/MemoryFile;->length()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-lez v9, :cond_3

    .line 88
    if-eqz v3, :cond_0

    .line 90
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v8

    goto :goto_0

    .line 88
    :cond_3
    if-eqz v3, :cond_4

    .line 90
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .end local v1    # "buff":[B
    .end local v4    # "mf":Landroid/os/MemoryFile;
    .end local v6    # "read":I
    .end local v7    # "start":I
    :cond_4
    :goto_2
    move-object v4, v8

    .line 96
    goto :goto_0

    .line 83
    :catch_1
    move-exception v2

    .line 84
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    const-string v9, "ResourceLoader"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    if-eqz v3, :cond_4

    .line 90
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 91
    :catch_2
    move-exception v9

    goto :goto_2

    .line 85
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 86
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    :try_start_5
    const-string v9, "ResourceLoader"

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 88
    if-eqz v3, :cond_4

    .line 90
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 91
    :catch_4
    move-exception v9

    goto :goto_2

    .line 88
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v8

    if-eqz v3, :cond_5

    .line 90
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 92
    :cond_5
    :goto_3
    throw v8

    .line 91
    .restart local v1    # "buff":[B
    .restart local v4    # "mf":Landroid/os/MemoryFile;
    .restart local v6    # "read":I
    .restart local v7    # "start":I
    :catch_5
    move-exception v9

    goto :goto_2

    .end local v1    # "buff":[B
    .end local v4    # "mf":Landroid/os/MemoryFile;
    .end local v6    # "read":I
    .end local v7    # "start":I
    :catch_6
    move-exception v9

    goto :goto_3
.end method

.method public final getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lmiui/maml/ResourceLoader;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getManifestRoot()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lmiui/maml/ResourceLoader;->mManifestName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmiui/maml/ResourceLoader;->getXmlRoot(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getPathForLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lmiui/maml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    iget-object v1, p0, Lmiui/maml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {p1, v1}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-virtual {p0, v0}, Lmiui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    const/4 v0, 0x0

    .line 196
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lmiui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 197
    iget-object v1, p0, Lmiui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-static {p1, v1}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {p0, v0}, Lmiui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    const/4 v0, 0x0

    .line 202
    :cond_1
    if-eqz v0, :cond_2

    .end local v0    # "ret":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public abstract resourceExists(Ljava/lang/String;)Z
.end method

.method public setLocal(Ljava/util/Locale;)Lmiui/maml/ResourceLoader;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lmiui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    iget-object v1, p0, Lmiui/maml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    .line 57
    :cond_0
    iput-object p1, p0, Lmiui/maml/ResourceLoader;->mLocale:Ljava/util/Locale;

    .line 58
    return-object p0
.end method
