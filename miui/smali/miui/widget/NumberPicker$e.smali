.class Lmiui/widget/NumberPicker$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/widget/NumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field private final VD:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/NumberPicker$e;->VD:I

    .line 135
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput p1, p0, Lmiui/widget/NumberPicker$e;->VD:I

    .line 139
    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lmiui/widget/NumberPicker$e;->VD:I

    invoke-static {v0, p1}, Lcom/miui/internal/util/SimpleNumberFormatter;->format(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
