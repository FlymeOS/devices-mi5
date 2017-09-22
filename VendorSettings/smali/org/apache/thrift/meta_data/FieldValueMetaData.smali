.class public Lorg/apache/thrift/meta_data/FieldValueMetaData;
.super Ljava/lang/Object;
.source "FieldValueMetaData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final isTypedefType:Z

.field public final type:B

.field private final typedefName:Ljava/lang/String;


# direct methods
.method public constructor <init>(B)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-byte p1, p0, Lorg/apache/thrift/meta_data/FieldValueMetaData;->type:B

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/thrift/meta_data/FieldValueMetaData;->isTypedefType:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/thrift/meta_data/FieldValueMetaData;->typedefName:Ljava/lang/String;

    .line 38
    return-void
.end method
