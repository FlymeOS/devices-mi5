.class abstract Lmiui/maml/MamlConfigSettings$ValueChoiceItem;
.super Lmiui/maml/MamlConfigSettings$VariableItem;
.source "MamlConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/MamlConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ValueChoiceItem"
.end annotation


# instance fields
.field protected mItemsText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mItemsValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmiui/maml/MamlConfigSettings;


# direct methods
.method private constructor <init>(Lmiui/maml/MamlConfigSettings;)V
    .locals 1

    .prologue
    .line 482
    iput-object p1, p0, Lmiui/maml/MamlConfigSettings$ValueChoiceItem;->this$0:Lmiui/maml/MamlConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/MamlConfigSettings$VariableItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/MamlConfigSettings$ValueChoiceItem;->mItemsText:Ljava/util/ArrayList;

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/MamlConfigSettings$ValueChoiceItem;->mItemsValue:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/maml/MamlConfigSettings;
    .param p2, "x1"    # Lmiui/maml/MamlConfigSettings$1;

    .prologue
    .line 482
    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings$ValueChoiceItem;-><init>(Lmiui/maml/MamlConfigSettings;)V

    return-void
.end method


# virtual methods
.method public OnValueChange(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 521
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 522
    .local v2, "value":Ljava/lang/String;
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ValueChoiceItem;->mPreference:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/ListPreference;

    .line 523
    .local v1, "pre":Landroid/preference/ListPreference;
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 524
    .local v0, "index":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 525
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmiui/maml/MamlConfigSettings$ValueChoiceItem;->setValuePreview(Ljava/lang/String;)V

    .line 526
    const/4 v3, 0x1

    .line 528
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected createPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 489
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onBuild(Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 494
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ValueChoiceItem;->mItemsText:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 495
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ValueChoiceItem;->mItemsValue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 496
    const-string v1, "Item"

    new-instance v2, Lmiui/maml/MamlConfigSettings$ValueChoiceItem$1;

    invoke-direct {v2, p0}, Lmiui/maml/MamlConfigSettings$ValueChoiceItem$1;-><init>(Lmiui/maml/MamlConfigSettings$ValueChoiceItem;)V

    invoke-static {p1, v1, v2}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    .line 503
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$ValueChoiceItem;->mPreference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    .line 504
    .local v0, "pre":Landroid/preference/ListPreference;
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ValueChoiceItem;->mItemsText:Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/maml/MamlConfigSettings$ValueChoiceItem;->mItemsText:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 505
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ValueChoiceItem;->mItemsValue:Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/maml/MamlConfigSettings$ValueChoiceItem;->mItemsValue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 506
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ValueChoiceItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 507
    return-void
.end method

.method protected setValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 511
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ValueChoiceItem;->mPreference:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/ListPreference;

    .line 512
    .local v1, "pre":Landroid/preference/ListPreference;
    invoke-virtual {v1, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 513
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 514
    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 515
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmiui/maml/MamlConfigSettings$ValueChoiceItem;->setValuePreview(Ljava/lang/String;)V

    .line 517
    :cond_0
    return-void
.end method
