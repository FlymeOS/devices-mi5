.class Lmiui/maml/MamlConfigSettings$2;
.super Ljava/lang/Object;
.source "MamlConfigSettings.java"

# interfaces
.implements Lmiui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/MamlConfigSettings;->createGroup(Landroid/preference/PreferenceScreen;Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/MamlConfigSettings;

.field final synthetic val$category:Landroid/preference/PreferenceCategory;


# direct methods
.method constructor <init>(Lmiui/maml/MamlConfigSettings;Landroid/preference/PreferenceCategory;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lmiui/maml/MamlConfigSettings$2;->this$0:Lmiui/maml/MamlConfigSettings;

    iput-object p2, p0, Lmiui/maml/MamlConfigSettings$2;->val$category:Landroid/preference/PreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "child"    # Lorg/w3c/dom/Element;

    .prologue
    .line 327
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$2;->this$0:Lmiui/maml/MamlConfigSettings;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    # invokes: Lmiui/maml/MamlConfigSettings;->createItem(Ljava/lang/String;)Lmiui/maml/MamlConfigSettings$Item;
    invoke-static {v1, v2}, Lmiui/maml/MamlConfigSettings;->access$100(Lmiui/maml/MamlConfigSettings;Ljava/lang/String;)Lmiui/maml/MamlConfigSettings$Item;

    move-result-object v0

    .line 328
    .local v0, "item":Lmiui/maml/MamlConfigSettings$Item;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$2;->val$category:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1, p1}, Lmiui/maml/MamlConfigSettings$Item;->build(Landroid/preference/PreferenceCategory;Lorg/w3c/dom/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$2;->this$0:Lmiui/maml/MamlConfigSettings;

    # getter for: Lmiui/maml/MamlConfigSettings;->mPreferenceMap:Ljava/util/HashMap;
    invoke-static {v1}, Lmiui/maml/MamlConfigSettings;->access$200(Lmiui/maml/MamlConfigSettings;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, v0, Lmiui/maml/MamlConfigSettings$Item;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_0
    return-void
.end method
