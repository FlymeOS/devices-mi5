.class public Lmiui/maml/VibrateCommand;
.super Lmiui/maml/ActionCommand;
.source "VibrateCommand.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VibrateCommand"

.field public static final TAG_NAME:Ljava/lang/String; = "VibrateCommand"


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 0
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method
