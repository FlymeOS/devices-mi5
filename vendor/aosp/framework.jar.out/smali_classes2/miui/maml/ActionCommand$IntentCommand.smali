.class Lmiui/maml/ActionCommand$IntentCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$IntentCommand$IntentType;
    }
.end annotation


# static fields
.field private static final TAG_FALLBACK:Ljava/lang/String; = "Fallback"

.field public static final TAG_NAME:Ljava/lang/String; = "IntentCommand"


# instance fields
.field private mActivityOptionsBundle:Lmiui/maml/ActionCommand$ObjVar;

.field private mFallbackTrigger:Lmiui/maml/CommandTrigger;

.field private mFlags:I

.field private mIntent:Landroid/content/Intent;

.field private mIntentInfo:Lmiui/maml/util/IntentInfo;

.field private mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

.field private mIntentVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 8
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 896
    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    .line 883
    sget-object v5, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    .line 897
    new-instance v5, Lmiui/maml/util/IntentInfo;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v6

    invoke-direct {v5, p2, v6}, Lmiui/maml/util/IntentInfo;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    iput-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    .line 898
    const-string v5, "broadcast"

    invoke-interface {p2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 899
    .local v2, "isBroadcast":Z
    const-string v5, "type"

    invoke-interface {p2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 900
    .local v1, "intentType":Ljava/lang/String;
    if-nez v2, :cond_0

    const-string v5, "broadcast"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 901
    :cond_0
    sget-object v5, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Broadcast:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    .line 913
    :cond_1
    :goto_0
    const-string v5, "flags"

    const/4 v6, -0x1

    invoke-static {p2, v5, v6}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFlags:I

    .line 915
    const-string v5, "activityOption"

    invoke-interface {p2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 916
    .local v0, "ao":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    :goto_1
    iput-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mActivityOptionsBundle:Lmiui/maml/ActionCommand$ObjVar;

    .line 919
    const-string v5, "Fallback"

    invoke-static {p2, v5}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 920
    .local v4, "node":Lorg/w3c/dom/Element;
    if-eqz v4, :cond_2

    .line 921
    new-instance v5, Lmiui/maml/CommandTrigger;

    invoke-direct {v5, v4, p1}, Lmiui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    .line 923
    :cond_2
    return-void

    .line 902
    .end local v0    # "ao":Ljava/lang/String;
    .end local v4    # "node":Lorg/w3c/dom/Element;
    :cond_3
    const-string v5, "service"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 903
    sget-object v5, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Service:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    goto :goto_0

    .line 904
    :cond_4
    const-string v5, "activity"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 905
    sget-object v5, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    goto :goto_0

    .line 906
    :cond_5
    const-string/jumbo v5, "var"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 907
    sget-object v5, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Var:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    .line 908
    const-string v5, "intentVar"

    invoke-interface {p2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 909
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 910
    new-instance v5, Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v3, v6, v7}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentVar:Lmiui/maml/data/IndexedVariable;

    goto :goto_0

    .line 916
    .end local v3    # "name":Ljava/lang/String;
    .restart local v0    # "ao":Ljava/lang/String;
    :cond_6
    new-instance v5, Lmiui/maml/ActionCommand$ObjVar;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lmiui/maml/ActionCommand$ObjVar;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    goto :goto_1
.end method


# virtual methods
.method protected doPerform()V
    .locals 4

    .prologue
    .line 974
    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 975
    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    iget-object v3, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lmiui/maml/util/IntentInfo;->update(Landroid/content/Intent;)V

    .line 977
    :try_start_0
    sget-object v2, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    iget-object v3, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v3}, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1004
    :cond_0
    :goto_0
    return-void

    .line 979
    :pswitch_0
    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mActivityOptionsBundle:Lmiui/maml/ActionCommand$ObjVar;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mActivityOptionsBundle:Lmiui/maml/ActionCommand$ObjVar;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$ObjVar;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    move-object v0, v2

    .line 980
    .local v0, "bd":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 995
    .end local v0    # "bd":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 996
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v2, :cond_2

    .line 997
    const-string v2, "ActionCommand"

    const-string v3, "fail to send Intent, fallback..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v2}, Lmiui/maml/CommandTrigger;->perform()V

    goto :goto_0

    .line 979
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 984
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 987
    :pswitch_2
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 990
    :pswitch_3
    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v2, :cond_0

    .line 991
    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentVar:Lmiui/maml/data/IndexedVariable;

    iget-object v3, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1000
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v2, "ActionCommand"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 977
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->finish()V

    .line 956
    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 927
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    invoke-virtual {v2}, Lmiui/maml/util/IntentInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->findTask(Ljava/lang/String;)Lmiui/maml/util/Task;

    move-result-object v0

    .line 929
    .local v0, "configTask":Lmiui/maml/util/Task;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 930
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    invoke-virtual {v1, v0}, Lmiui/maml/util/IntentInfo;->set(Lmiui/maml/util/Task;)V

    .line 933
    :cond_0
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    invoke-virtual {v1}, Lmiui/maml/util/IntentInfo;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/util/Utils;->isProtectedIntent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 949
    :cond_1
    :goto_0
    return-void

    .line 937
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 938
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lmiui/maml/util/IntentInfo;->update(Landroid/content/Intent;)V

    .line 940
    iget v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFlags:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 941
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    iget v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFlags:I

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 946
    :cond_3
    :goto_1
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v1, :cond_1

    .line 947
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v1}, Lmiui/maml/CommandTrigger;->init()V

    goto :goto_0

    .line 942
    :cond_4
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    sget-object v2, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    if-ne v1, v2, :cond_3

    .line 943
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->pause()V

    .line 963
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->resume()V

    .line 970
    :cond_0
    return-void
.end method
