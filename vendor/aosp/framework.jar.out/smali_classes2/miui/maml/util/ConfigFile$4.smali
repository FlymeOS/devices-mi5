.class Lmiui/maml/util/ConfigFile$4;
.super Ljava/lang/Object;
.source "ConfigFile.java"

# interfaces
.implements Lmiui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/util/ConfigFile;->loadDefaultSettings(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/util/ConfigFile;


# direct methods
.method constructor <init>(Lmiui/maml/util/ConfigFile;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lmiui/maml/util/ConfigFile$4;->this$0:Lmiui/maml/util/ConfigFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "child"    # Lorg/w3c/dom/Element;

    .prologue
    .line 377
    const/4 v0, 0x0

    new-instance v1, Lmiui/maml/util/ConfigFile$4$1;

    invoke-direct {v1, p0}, Lmiui/maml/util/ConfigFile$4$1;-><init>(Lmiui/maml/util/ConfigFile$4;)V

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    .line 399
    return-void
.end method
