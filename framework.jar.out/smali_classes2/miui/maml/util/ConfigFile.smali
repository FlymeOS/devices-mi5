.class public Lmiui/maml/util/ConfigFile;
.super Ljava/lang/Object;
.source "ConfigFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/util/ConfigFile$OnLoadElementListener;,
        Lmiui/maml/util/ConfigFile$Gadget;,
        Lmiui/maml/util/ConfigFile$Variable;
    }
.end annotation


# static fields
.field public static final TAG_APP_PICKER:Ljava/lang/String; = "AppPicker"

.field public static final TAG_CHECK_BOX:Ljava/lang/String; = "CheckBox"

.field private static final TAG_GADGET:Ljava/lang/String; = "Gadget"

.field private static final TAG_GADGETS:Ljava/lang/String; = "Gadgets"

.field public static final TAG_GROUP:Ljava/lang/String; = "Group"

.field public static final TAG_IMAGE_PICKER:Ljava/lang/String; = "ImagePicker"

.field public static final TAG_NUMBER_CHOICE:Ljava/lang/String; = "NumberChoice"

.field public static final TAG_NUMBER_INPUT:Ljava/lang/String; = "NumberInput"

.field private static final TAG_ROOT:Ljava/lang/String; = "Config"

.field public static final TAG_STRING_CHOICE:Ljava/lang/String; = "StringChoice"

.field public static final TAG_STRING_INPUT:Ljava/lang/String; = "StringInput"

.field private static final TAG_TASK:Ljava/lang/String; = "Intent"

.field private static final TAG_TASKS:Ljava/lang/String; = "Tasks"

.field private static final TAG_VARIABLE:Ljava/lang/String; = "Variable"

.field private static final TAG_VARIABLES:Ljava/lang/String; = "Variables"


# instance fields
.field private mDirty:Z

.field private mFilePath:Ljava/lang/String;

.field private mGadgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/util/ConfigFile$Gadget;",
            ">;"
        }
    .end annotation
.end field

.field private mTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/maml/util/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/maml/util/ConfigFile$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    .line 288
    return-void
.end method

.method static synthetic access$000(Lmiui/maml/util/ConfigFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/util/ConfigFile;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadGadgets(Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "root"    # Lorg/w3c/dom/Element;

    .prologue
    .line 276
    const-string v0, "Gadgets"

    const-string v1, "Gadget"

    new-instance v2, Lmiui/maml/util/ConfigFile$3;

    invoke-direct {v2, p0}, Lmiui/maml/util/ConfigFile$3;-><init>(Lmiui/maml/util/ConfigFile;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lmiui/maml/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/util/ConfigFile$OnLoadElementListener;)V

    .line 286
    return-void
.end method

.method private loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/util/ConfigFile$OnLoadElementListener;)V
    .locals 6
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "listTag"    # Ljava/lang/String;
    .param p3, "itemTag"    # Ljava/lang/String;
    .param p4, "listener"    # Lmiui/maml/util/ConfigFile$OnLoadElementListener;

    .prologue
    .line 293
    invoke-static {p1, p2}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 294
    if-nez p1, :cond_1

    .line 304
    :cond_0
    return-void

    .line 296
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 297
    .local v0, "children":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 298
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 299
    .local v3, "node":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v3

    .line 300
    check-cast v2, Lorg/w3c/dom/Element;

    .line 301
    .local v2, "item":Lorg/w3c/dom/Element;
    invoke-interface {p4, v2}, Lmiui/maml/util/ConfigFile$OnLoadElementListener;->OnLoadElement(Lorg/w3c/dom/Element;)V

    .line 297
    .end local v2    # "item":Lorg/w3c/dom/Element;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private loadTasks(Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "root"    # Lorg/w3c/dom/Element;

    .prologue
    .line 267
    const-string v0, "Tasks"

    const-string v1, "Intent"

    new-instance v2, Lmiui/maml/util/ConfigFile$2;

    invoke-direct {v2, p0}, Lmiui/maml/util/ConfigFile$2;-><init>(Lmiui/maml/util/ConfigFile;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lmiui/maml/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/util/ConfigFile$OnLoadElementListener;)V

    .line 273
    return-void
.end method

.method private loadVariables(Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "root"    # Lorg/w3c/dom/Element;

    .prologue
    .line 258
    const-string v0, "Variables"

    const-string v1, "Variable"

    new-instance v2, Lmiui/maml/util/ConfigFile$1;

    invoke-direct {v2, p0}, Lmiui/maml/util/ConfigFile$1;-><init>(Lmiui/maml/util/ConfigFile;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lmiui/maml/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/util/ConfigFile$OnLoadElementListener;)V

    .line 264
    return-void
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 356
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    const-string v1, "string"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "number"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    :cond_2
    iget-object v1, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/ConfigFile$Variable;

    .line 361
    .local v0, "item":Lmiui/maml/util/ConfigFile$Variable;
    if-nez v0, :cond_3

    .line 362
    new-instance v0, Lmiui/maml/util/ConfigFile$Variable;

    .end local v0    # "item":Lmiui/maml/util/ConfigFile$Variable;
    invoke-direct {v0}, Lmiui/maml/util/ConfigFile$Variable;-><init>()V

    .line 363
    .restart local v0    # "item":Lmiui/maml/util/ConfigFile$Variable;
    iput-object p1, v0, Lmiui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    .line 364
    iget-object v1, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    :cond_3
    iput-object p3, v0, Lmiui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    .line 367
    iput-object p2, v0, Lmiui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method private writeGadgets(Ljava/lang/StringBuilder;)V
    .locals 9
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 212
    iget-object v4, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 227
    :goto_0
    return-void

    .line 215
    :cond_0
    const-string v4, "Gadgets"

    invoke-static {p1, v4, v6}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 217
    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "path"

    aput-object v4, v2, v6

    const-string/jumbo v4, "x"

    aput-object v4, v2, v5

    const-string/jumbo v4, "y"

    aput-object v4, v2, v7

    .line 220
    .local v2, "names":[Ljava/lang/String;
    iget-object v4, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/util/ConfigFile$Gadget;

    .line 221
    .local v1, "item":Lmiui/maml/util/ConfigFile$Gadget;
    new-array v3, v8, [Ljava/lang/String;

    iget-object v4, v1, Lmiui/maml/util/ConfigFile$Gadget;->path:Ljava/lang/String;

    aput-object v4, v3, v6

    iget v4, v1, Lmiui/maml/util/ConfigFile$Gadget;->x:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, v1, Lmiui/maml/util/ConfigFile$Gadget;->y:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 224
    .local v3, "values":[Ljava/lang/String;
    const-string v4, "Gadget"

    invoke-static {p1, v4, v2, v3, v5}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_1

    .line 226
    .end local v1    # "item":Lmiui/maml/util/ConfigFile$Gadget;
    .end local v3    # "values":[Ljava/lang/String;
    :cond_1
    const-string v4, "Gadgets"

    invoke-static {p1, v4, v5}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "end"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    const-string v0, "<"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    if-eqz p2, :cond_0

    .line 232
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string v0, ">\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    return-void
.end method

.method private static writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 239
    return-void
.end method

.method private static writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;
    .param p4, "ignoreEmptyValues"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    const-string v1, "<"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 246
    if-eqz p4, :cond_0

    aget-object v1, p3, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_0
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string v1, "=\""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    aget-object v1, p3, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 254
    :cond_1
    const-string v1, "/>\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    return-void
.end method

.method private writeTasks(Ljava/lang/StringBuilder;)V
    .locals 11
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 193
    iget-object v4, p0, Lmiui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 209
    :goto_0
    return-void

    .line 196
    :cond_0
    const-string v4, "Tasks"

    invoke-static {p1, v4, v7}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 198
    const/4 v4, 0x7

    new-array v2, v4, [Ljava/lang/String;

    sget-object v4, Lmiui/maml/util/Task;->TAG_ID:Ljava/lang/String;

    aput-object v4, v2, v7

    sget-object v4, Lmiui/maml/util/Task;->TAG_ACTION:Ljava/lang/String;

    aput-object v4, v2, v6

    sget-object v4, Lmiui/maml/util/Task;->TAG_TYPE:Ljava/lang/String;

    aput-object v4, v2, v8

    sget-object v4, Lmiui/maml/util/Task;->TAG_CATEGORY:Ljava/lang/String;

    aput-object v4, v2, v9

    sget-object v4, Lmiui/maml/util/Task;->TAG_PACKAGE:Ljava/lang/String;

    aput-object v4, v2, v10

    const/4 v4, 0x5

    sget-object v5, Lmiui/maml/util/Task;->TAG_CLASS:Ljava/lang/String;

    aput-object v5, v2, v4

    const/4 v4, 0x6

    sget-object v5, Lmiui/maml/util/Task;->TAG_NAME:Ljava/lang/String;

    aput-object v5, v2, v4

    .line 202
    .local v2, "names":[Ljava/lang/String;
    iget-object v4, p0, Lmiui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/util/Task;

    .line 203
    .local v1, "item":Lmiui/maml/util/Task;
    const/4 v4, 0x7

    new-array v3, v4, [Ljava/lang/String;

    iget-object v4, v1, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    aput-object v4, v3, v7

    iget-object v4, v1, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, v1, Lmiui/maml/util/Task;->type:Ljava/lang/String;

    aput-object v4, v3, v8

    iget-object v4, v1, Lmiui/maml/util/Task;->category:Ljava/lang/String;

    aput-object v4, v3, v9

    iget-object v4, v1, Lmiui/maml/util/Task;->packageName:Ljava/lang/String;

    aput-object v4, v3, v10

    const/4 v4, 0x5

    iget-object v5, v1, Lmiui/maml/util/Task;->className:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-object v5, v1, Lmiui/maml/util/Task;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 206
    .local v3, "values":[Ljava/lang/String;
    const-string v4, "Intent"

    invoke-static {p1, v4, v2, v3, v6}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_1

    .line 208
    .end local v1    # "item":Lmiui/maml/util/Task;
    .end local v3    # "values":[Ljava/lang/String;
    :cond_1
    const-string v4, "Tasks"

    invoke-static {p1, v4, v6}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private writeVariables(Ljava/lang/StringBuilder;)V
    .locals 9
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 175
    iget-object v4, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 190
    :goto_0
    return-void

    .line 178
    :cond_0
    const-string v4, "Variables"

    invoke-static {p1, v4, v5}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 180
    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "name"

    aput-object v4, v2, v5

    const-string v4, "type"

    aput-object v4, v2, v6

    const-string/jumbo v4, "value"

    aput-object v4, v2, v7

    .line 183
    .local v2, "names":[Ljava/lang/String;
    iget-object v4, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/util/ConfigFile$Variable;

    .line 184
    .local v1, "item":Lmiui/maml/util/ConfigFile$Variable;
    new-array v3, v8, [Ljava/lang/String;

    iget-object v4, v1, Lmiui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, v1, Lmiui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, v1, Lmiui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    aput-object v4, v3, v7

    .line 187
    .local v3, "values":[Ljava/lang/String;
    const-string v4, "Variable"

    invoke-static {p1, v4, v2, v3}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 189
    .end local v1    # "item":Lmiui/maml/util/ConfigFile$Variable;
    .end local v3    # "values":[Ljava/lang/String;
    :cond_1
    const-string v4, "Variables"

    invoke-static {p1, v4, v6}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public getGadgets()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lmiui/maml/util/ConfigFile$Gadget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTask(Ljava/lang/String;)Lmiui/maml/util/Task;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 352
    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/Task;

    return-object v0
.end method

.method public getTasks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lmiui/maml/util/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getVariable(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 307
    iget-object v1, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/ConfigFile$Variable;

    .line 308
    .local v0, "item":Lmiui/maml/util/ConfigFile$Variable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lmiui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVariables()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lmiui/maml/util/ConfigFile$Variable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;)Z
    .locals 10
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 134
    iput-object p1, p0, Lmiui/maml/util/ConfigFile;->mFilePath:Ljava/lang/String;

    .line 135
    iget-object v8, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 136
    iget-object v8, p0, Lmiui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 137
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 138
    .local v1, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v0, 0x0

    .line 139
    .local v0, "db":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v4, 0x0

    .line 141
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .end local v4    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 143
    invoke-virtual {v0, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 144
    .local v2, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 145
    .local v6, "root":Lorg/w3c/dom/Element;
    if-nez v6, :cond_2

    .line 166
    if-eqz v5, :cond_0

    .line 167
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a

    :cond_0
    :goto_0
    move-object v4, v5

    .line 171
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "root":Lorg/w3c/dom/Element;
    .restart local v4    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_1
    return v7

    .line 148
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v2    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "root":Lorg/w3c/dom/Element;
    :cond_2
    :try_start_3
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Config"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v8

    if-nez v8, :cond_4

    .line 166
    if-eqz v5, :cond_3

    .line 167
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b

    :cond_3
    :goto_2
    move-object v4, v5

    .line 169
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_1

    .line 151
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :cond_4
    :try_start_5
    invoke-direct {p0, v6}, Lmiui/maml/util/ConfigFile;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 152
    invoke-direct {p0, v6}, Lmiui/maml/util/ConfigFile;->loadTasks(Lorg/w3c/dom/Element;)V

    .line 153
    invoke-direct {p0, v6}, Lmiui/maml/util/ConfigFile;->loadGadgets(Lorg/w3c/dom/Element;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_e
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 154
    const/4 v7, 0x1

    .line 166
    if-eqz v5, :cond_5

    .line 167
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c

    :cond_5
    :goto_3
    move-object v4, v5

    .line 169
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_1

    .line 155
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "root":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v8

    .line 166
    :goto_4
    if-eqz v4, :cond_1

    .line 167
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 168
    :catch_1
    move-exception v8

    goto :goto_1

    .line 156
    :catch_2
    move-exception v3

    .line 157
    .local v3, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_5
    :try_start_8
    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 166
    if-eqz v4, :cond_1

    .line 167
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_1

    .line 168
    :catch_3
    move-exception v8

    goto :goto_1

    .line 158
    .end local v3    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_4
    move-exception v3

    .line 159
    .local v3, "e":Lorg/xml/sax/SAXException;
    :goto_6
    :try_start_a
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 166
    if-eqz v4, :cond_1

    .line 167
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_1

    .line 168
    :catch_5
    move-exception v8

    goto :goto_1

    .line 160
    .end local v3    # "e":Lorg/xml/sax/SAXException;
    :catch_6
    move-exception v3

    .line 161
    .local v3, "e":Ljava/io/IOException;
    :goto_7
    :try_start_c
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 166
    if-eqz v4, :cond_1

    .line 167
    :try_start_d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_1

    .line 168
    :catch_7
    move-exception v8

    goto :goto_1

    .line 162
    .end local v3    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v3

    .line 163
    .local v3, "e":Ljava/lang/Exception;
    :goto_8
    :try_start_e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 166
    if-eqz v4, :cond_1

    .line 167
    :try_start_f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    goto :goto_1

    .line 168
    :catch_9
    move-exception v8

    goto :goto_1

    .line 165
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 166
    :goto_9
    if-eqz v4, :cond_6

    .line 167
    :try_start_10
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    .line 169
    :cond_6
    :goto_a
    throw v7

    .line 168
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v2    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "root":Lorg/w3c/dom/Element;
    :catch_a
    move-exception v8

    goto :goto_0

    :catch_b
    move-exception v8

    goto :goto_2

    :catch_c
    move-exception v8

    goto :goto_3

    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "root":Lorg/w3c/dom/Element;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_d
    move-exception v8

    goto :goto_a

    .line 165
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_9

    .line 162
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_e
    move-exception v3

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_8

    .line 160
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_f
    move-exception v3

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_7

    .line 158
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_10
    move-exception v3

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_6

    .line 156
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_11
    move-exception v3

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_5

    .line 155
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_12
    move-exception v8

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_4
.end method

.method public loadDefaultSettings(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "root"    # Lorg/w3c/dom/Element;

    .prologue
    .line 371
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Config"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    const-string v0, "Group"

    new-instance v1, Lmiui/maml/util/ConfigFile$4;

    invoke-direct {v1, p0}, Lmiui/maml/util/ConfigFile$4;-><init>(Lmiui/maml/util/ConfigFile;)V

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    goto :goto_0
.end method

.method public moveGadget(Lmiui/maml/util/ConfigFile$Gadget;I)V
    .locals 1
    .param p1, "g"    # Lmiui/maml/util/ConfigFile$Gadget;
    .param p2, "position"    # I

    .prologue
    .line 346
    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 349
    :cond_0
    return-void
.end method

.method public putGadget(Lmiui/maml/util/ConfigFile$Gadget;)V
    .locals 1
    .param p1, "g"    # Lmiui/maml/util/ConfigFile$Gadget;

    .prologue
    .line 333
    if-nez p1, :cond_0

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/util/ConfigFile;->mDirty:Z

    goto :goto_0
.end method

.method public putNumber(Ljava/lang/String;D)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 322
    invoke-static {p2, p3}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public putNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 317
    const-string v0, "number"

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/util/ConfigFile;->mDirty:Z

    .line 319
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 312
    const-string v0, "string"

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/util/ConfigFile;->mDirty:Z

    .line 314
    return-void
.end method

.method public putTask(Lmiui/maml/util/Task;)V
    .locals 2
    .param p1, "task"    # Lmiui/maml/util/Task;

    .prologue
    .line 326
    if-eqz p1, :cond_0

    iget-object v0, p1, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    iget-object v1, p1, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/util/ConfigFile;->mDirty:Z

    goto :goto_0
.end method

.method public removeGadget(Lmiui/maml/util/ConfigFile$Gadget;)V
    .locals 1
    .param p1, "g"    # Lmiui/maml/util/ConfigFile$Gadget;

    .prologue
    .line 340
    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/util/ConfigFile;->mDirty:Z

    .line 342
    return-void
.end method

.method public save()Z
    .locals 2

    .prologue
    .line 107
    iget-boolean v0, p0, Lmiui/maml/util/ConfigFile;->mDirty:Z

    .line 108
    .local v0, "dirty":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/maml/util/ConfigFile;->mDirty:Z

    .line 109
    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiui/maml/util/ConfigFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmiui/maml/util/ConfigFile;->save(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public save(Ljava/lang/String;)Z
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 114
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 116
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 117
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v5, "Config"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 120
    invoke-direct {p0, v2}, Lmiui/maml/util/ConfigFile;->writeVariables(Ljava/lang/StringBuilder;)V

    .line 121
    invoke-direct {p0, v2}, Lmiui/maml/util/ConfigFile;->writeTasks(Ljava/lang/StringBuilder;)V

    .line 122
    invoke-direct {p0, v2}, Lmiui/maml/util/ConfigFile;->writeGadgets(Ljava/lang/StringBuilder;)V

    .line 123
    const-string v5, "Config"

    const/4 v6, 0x1

    invoke-static {v2, v5, v6}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/miui/Shell;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 125
    const/16 v5, 0x1ff

    invoke-static {p1, v5}, Landroid/miui/Shell;->chmod(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :goto_0
    return v3

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v4

    .line 128
    goto :goto_0
.end method
