.class public abstract Lmiui/maml/ActionCommand$PropertyCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PropertyCommand"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected mTargetElement:Lmiui/maml/elements/ScreenElement;

.field private mTargetObj:Lmiui/maml/util/Variable;


# direct methods
.method protected constructor <init>(Lmiui/maml/elements/ScreenElement;Lmiui/maml/util/Variable;Ljava/lang/String;)V
    .locals 0
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "targetObj"    # Lmiui/maml/util/Variable;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1145
    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    .line 1146
    iput-object p2, p0, Lmiui/maml/ActionCommand$PropertyCommand;->mTargetObj:Lmiui/maml/util/Variable;

    .line 1147
    return-void
.end method

.method public static create(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/ActionCommand$PropertyCommand;
    .locals 3
    .param p0, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1150
    new-instance v0, Lmiui/maml/util/Variable;

    invoke-direct {v0, p1}, Lmiui/maml/util/Variable;-><init>(Ljava/lang/String;)V

    .line 1151
    .local v0, "t":Lmiui/maml/util/Variable;
    const-string/jumbo v1, "visibility"

    invoke-virtual {v0}, Lmiui/maml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1152
    new-instance v1, Lmiui/maml/ActionCommand$VisibilityProperty;

    invoke-direct {v1, p0, v0, p2}, Lmiui/maml/ActionCommand$VisibilityProperty;-><init>(Lmiui/maml/elements/ScreenElement;Lmiui/maml/util/Variable;Ljava/lang/String;)V

    .line 1156
    :goto_0
    return-object v1

    .line 1153
    :cond_0
    const-string v1, "animation"

    invoke-virtual {v0}, Lmiui/maml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1154
    new-instance v1, Lmiui/maml/ActionCommand$AnimationProperty;

    invoke-direct {v1, p0, v0, p2}, Lmiui/maml/ActionCommand$AnimationProperty;-><init>(Lmiui/maml/elements/ScreenElement;Lmiui/maml/util/Variable;Ljava/lang/String;)V

    goto :goto_0

    .line 1156
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    .line 1161
    invoke-super {p0}, Lmiui/maml/ActionCommand;->init()V

    .line 1162
    iget-object v0, p0, Lmiui/maml/ActionCommand$PropertyCommand;->mTargetObj:Lmiui/maml/util/Variable;

    if-nez v0, :cond_1

    .line 1172
    :cond_0
    :goto_0
    return-void

    .line 1164
    :cond_1
    iget-object v0, p0, Lmiui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    if-nez v0, :cond_0

    .line 1165
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$PropertyCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$PropertyCommand;->mTargetObj:Lmiui/maml/util/Variable;

    invoke-virtual {v1}, Lmiui/maml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    .line 1166
    iget-object v0, p0, Lmiui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    if-nez v0, :cond_0

    .line 1167
    const-string v0, "ActionCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not find PropertyCommand target, name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$PropertyCommand;->mTargetObj:Lmiui/maml/util/Variable;

    invoke-virtual {v2}, Lmiui/maml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/ActionCommand$PropertyCommand;->mTargetObj:Lmiui/maml/util/Variable;

    goto :goto_0
.end method

.method public perform()V
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Lmiui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    if-nez v0, :cond_0

    .line 1179
    :goto_0
    return-void

    .line 1178
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$PropertyCommand;->doPerform()V

    goto :goto_0
.end method
