.class public Lmiui/maml/data/WebServiceBinder$Variable;
.super Lmiui/maml/data/VariableBinder$Variable;
.source "WebServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/WebServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Variable"
.end annotation


# instance fields
.field private mCache:Z

.field private mInnerPath:Ljava/lang/String;

.field public mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "var"    # Lmiui/maml/data/Variables;

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    .line 131
    const-string/jumbo v0, "xpath"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mPath:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "path"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mPath:Ljava/lang/String;

    .line 135
    :cond_0
    const-string v0, "innerPath"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mInnerPath:Ljava/lang/String;

    .line 136
    const-string v0, "cache"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mCache:Z

    .line 137
    return-void
.end method

.method static synthetic access$100(Lmiui/maml/data/WebServiceBinder$Variable;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/maml/data/WebServiceBinder$Variable;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder$Variable;->hasCache(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private final getCacheName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasCache(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cacheDir"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-boolean v0, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mCache:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public loadCache(Ljava/lang/String;)V
    .locals 6
    .param p1, "cacheDir"    # Ljava/lang/String;

    .prologue
    .line 193
    iget v4, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mType:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder$Variable;->hasCache(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const/4 v2, 0x0

    .line 197
    .local v2, "is":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 199
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {p0}, Lmiui/maml/data/WebServiceBinder$Variable;->getCacheName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 206
    invoke-static {v3}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 209
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :goto_1
    invoke-virtual {p0, v0}, Lmiui/maml/data/WebServiceBinder$Variable;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_2
    const-string v4, "WebServiceBinder"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    .line 203
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :goto_3
    :try_start_3
    const-string v4, "WebServiceBinder"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 206
    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    :goto_4
    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v4

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_4

    .line 203
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 201
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public saveCache(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 9
    .param p1, "response"    # Ljava/io/InputStream;
    .param p2, "cacheDir"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    .line 147
    invoke-direct {p0, p2}, Lmiui/maml/data/WebServiceBinder$Variable;->hasCache(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 148
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v2, "cacheDirFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 150
    const/16 v7, 0x1ed

    invoke-static {v2, v7, v8, v8}, Lmiui/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 153
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {p0}, Lmiui/maml/data/WebServiceBinder$Variable;->getCacheName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, p2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 157
    if-eqz p1, :cond_1

    .line 158
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v5, v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    .line 160
    .local v5, "fo":Ljava/io/FileOutputStream;
    const/high16 v0, 0x10000

    .line 161
    .local v0, "COUNT":I
    const/high16 v7, 0x10000

    :try_start_1
    new-array v1, v7, [B

    .line 162
    .local v1, "buff":[B
    const/4 v6, -0x1

    .line 163
    .local v6, "read":I
    :goto_0
    const/4 v7, 0x0

    const/high16 v8, 0x10000

    invoke-virtual {p1, v1, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-lez v6, :cond_2

    .line 164
    const/4 v7, 0x0

    invoke-virtual {v5, v1, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 167
    .end local v1    # "buff":[B
    .end local v6    # "read":I
    :catchall_0
    move-exception v7

    :try_start_2
    invoke-static {v5}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v7
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    .line 171
    .end local v0    # "COUNT":I
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fo":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 172
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v7, "WebServiceBinder"

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 182
    .end local v2    # "cacheDirFile":Ljava/io/File;
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_1
    return-void

    .line 167
    .restart local v0    # "COUNT":I
    .restart local v1    # "buff":[B
    .restart local v2    # "cacheDirFile":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "fo":Ljava/io/FileOutputStream;
    .restart local v6    # "read":I
    :cond_2
    :try_start_3
    invoke-static {v5}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 174
    .end local v0    # "COUNT":I
    .end local v1    # "buff":[B
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fo":Ljava/io/FileOutputStream;
    .end local v6    # "read":I
    :catch_1
    move-exception v3

    .line 175
    .local v3, "e":Ljava/io/IOException;
    const-string v7, "WebServiceBinder"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 177
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 178
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    const-string v7, "WebServiceBinder"

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1
.end method

.method public set(Ljava/lang/Object;)V
    .locals 14
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 214
    invoke-virtual {p0}, Lmiui/maml/data/WebServiceBinder$Variable;->isArray()Z

    move-result v12

    if-eqz v12, :cond_6

    instance-of v12, p1, Lorg/json/JSONArray;

    if-eqz v12, :cond_6

    move-object v0, p1

    .line 215
    check-cast v0, Lorg/json/JSONArray;

    .line 216
    .local v0, "arr":Lorg/json/JSONArray;
    iget-object v12, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v12}, Lmiui/maml/data/IndexedVariable;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v11

    .line 217
    .local v11, "variables":Lmiui/maml/data/Variables;
    iget-object v12, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v12}, Lmiui/maml/data/IndexedVariable;->getIndex()I

    move-result v12

    invoke-virtual {v11, v12}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 218
    .local v8, "obj":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 219
    .local v1, "count":I
    const/4 v5, 0x0

    .line 220
    .local v5, "isNumberArr":Z
    instance-of v12, v8, [D

    if-eqz v12, :cond_3

    .line 221
    check-cast v8, [D

    .end local v8    # "obj":Ljava/lang/Object;
    check-cast v8, [D

    array-length v1, v8

    .line 222
    const/4 v5, 0x1

    .line 227
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_7

    .line 228
    const/4 v9, 0x0

    .line 230
    .local v9, "object":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v4, v12, :cond_1

    .line 231
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .end local v9    # "object":Ljava/lang/Object;
    :cond_1
    move-object v12, v9

    .line 234
    :goto_2
    const-wide/16 v2, 0x0

    .line 235
    .local v2, "d":D
    const/4 v10, 0x0

    .line 236
    .local v10, "s":Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 237
    sget-object v13, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v12, v13, :cond_4

    instance-of v13, v12, Lorg/json/JSONObject;

    if-eqz v13, :cond_4

    .line 238
    new-instance v6, Lmiui/maml/util/JSONPath;

    check-cast v12, Lorg/json/JSONObject;

    invoke-direct {v6, v12}, Lmiui/maml/util/JSONPath;-><init>(Lorg/json/JSONObject;)V

    .line 239
    .local v6, "jpath":Lmiui/maml/util/JSONPath;
    iget-object v12, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mInnerPath:Ljava/lang/String;

    invoke-virtual {v6, v12}, Lmiui/maml/util/JSONPath;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 240
    .local v7, "o":Ljava/lang/Object;
    instance-of v12, v7, Ljava/lang/String;

    if-eqz v12, :cond_2

    move-object v10, v7

    .line 241
    check-cast v10, Ljava/lang/String;

    .line 242
    if-eqz v5, :cond_2

    .line 244
    :try_start_1
    invoke-static {v10}, Lmiui/maml/util/Utils;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    .line 260
    .end local v6    # "jpath":Lmiui/maml/util/JSONPath;
    .end local v7    # "o":Ljava/lang/Object;
    :cond_2
    :goto_3
    if-eqz v5, :cond_5

    .line 261
    iget-object v12, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v12, v4, v2, v3}, Lmiui/maml/data/IndexedVariable;->setArr(ID)Z

    .line 227
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 223
    .end local v2    # "d":D
    .end local v4    # "i":I
    .end local v10    # "s":Ljava/lang/String;
    .restart local v8    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v12, v8, [Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 224
    check-cast v8, [Ljava/lang/String;

    .end local v8    # "obj":Ljava/lang/Object;
    check-cast v8, [Ljava/lang/String;

    array-length v1, v8

    goto :goto_0

    .line 232
    .restart local v4    # "i":I
    .restart local v9    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v12

    move-object v12, v9

    goto :goto_2

    .line 249
    .end local v9    # "object":Ljava/lang/Object;
    .restart local v2    # "d":D
    .restart local v10    # "s":Ljava/lang/String;
    :cond_4
    instance-of v12, v12, Ljava/lang/String;

    if-eqz v12, :cond_2

    move-object v10, p1

    .line 250
    check-cast v10, Ljava/lang/String;

    .line 251
    if-eqz v5, :cond_2

    .line 253
    :try_start_2
    invoke-static {v10}, Lmiui/maml/util/Utils;->parseDouble(Ljava/lang/String;)D
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v2

    goto :goto_3

    .line 263
    :cond_5
    iget-object v12, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v12, v4, v10}, Lmiui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    goto :goto_4

    .line 267
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "count":I
    .end local v2    # "d":D
    .end local v4    # "i":I
    .end local v5    # "isNumberArr":Z
    .end local v10    # "s":Ljava/lang/String;
    .end local v11    # "variables":Lmiui/maml/data/Variables;
    :cond_6
    invoke-super {p0, p1}, Lmiui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    .line 269
    :cond_7
    return-void

    .line 245
    .restart local v0    # "arr":Lorg/json/JSONArray;
    .restart local v1    # "count":I
    .restart local v2    # "d":D
    .restart local v4    # "i":I
    .restart local v5    # "isNumberArr":Z
    .restart local v6    # "jpath":Lmiui/maml/util/JSONPath;
    .restart local v7    # "o":Ljava/lang/Object;
    .restart local v10    # "s":Ljava/lang/String;
    .restart local v11    # "variables":Lmiui/maml/data/Variables;
    :catch_1
    move-exception v12

    goto :goto_3

    .line 254
    .end local v6    # "jpath":Lmiui/maml/util/JSONPath;
    .end local v7    # "o":Ljava/lang/Object;
    :catch_2
    move-exception v12

    goto :goto_3
.end method
